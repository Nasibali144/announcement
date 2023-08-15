import 'dart:io';
import 'package:announcement/core/folder_names.dart';
import 'package:announcement/domain/models/announcement/announcement_model.dart';
import 'package:announcement/domain/models/category/category_model.dart';
import 'package:announcement/domain/models/member/member_model.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';

abstract class AnnouncementRepository {
  Future<bool> upload(Announcement announcement, List<File> files, String categoryName);
  Future<bool> delete(Announcement announcement);
}

class AnnouncementRepositoryImpl implements AnnouncementRepository {
  final FirebaseDatabase database;
  final FirebaseStorage storage;

  const AnnouncementRepositoryImpl({required this.database, required this.storage});


  @override
  Future<bool> upload(Announcement announcement, List<File> files, String categoryName) async {
    try {
      /// storage
      final imageFolder = storage.ref(Folder.images);
      List<String> images = [];
      for(int i = 0; i < files.length; i++) {
        final path = "${announcement.name}_$i.${files[i].path.substring(files[i].path.lastIndexOf(".") + 1)}";
        await imageFolder.child(path).putFile(files[i]);
        final url = await imageFolder.child(path).getDownloadURL();
        images.add(url);
      }
      
      /// database: new store announcement
      final folder = database.ref(Folder.announcement);
      final file = folder.push();
      final data = announcement.copyWith(id: file.key ?? announcement.hashCode.toString(), images: images);
      file.set(data.toJson());

      /// database: add new announcement id in its category
      final categoryPath = database.ref(Folder.category).child(categoryName);
      final result = await categoryPath.get();
      final category = Category.fromJson(Map<String, Object?>.from(result.value as Map));
      await categoryPath.update({
        "announcements": [...category.announcements, data.id]
      });

      /// database: add new announcement id in member
      final memberPath = database.ref(Folder.user).child(announcement.userId);
      final memberJson = await memberPath.get();
      final member = Member.fromJson(Map<String, Object?>.from(memberJson.value as Map));
      await memberPath.update({
        "announcements": [...member.announcements, data.id]
      });

      return true;
    } catch(e) {
      return false;
    }
  }

  @override
  Future<bool> delete(Announcement announcement) async {
    try {
      /// remove images in storage
      for (var imageUrl in announcement.images) {
        await storage.refFromURL(imageUrl).delete();
      }

      /// database: delete announcement
      final folder = database.ref(Folder.announcement);
      await folder.child(announcement.id).remove();

      /// database: delete announcement id in its category
      final event = await database.ref(Folder.category).orderByChild("id").equalTo(announcement.categoryId).once();
      final category = Category.fromJson(Map<String, Object?>.from(event.snapshot.value as Map));
      final listIdCT = category.announcements;
      listIdCT.remove(announcement.id);
      await database.ref(Folder.category).child(category.name.toLowerCase()).update({"announcements": listIdCT});

      /// database: delete announcement id in member
      final memberPath = database.ref(Folder.user).child(announcement.userId);
      final memberJson = await memberPath.get();
      final member = Member.fromJson(Map<String, Object?>.from(memberJson.value as Map));
      final listIdMB = member.announcements;
      listIdMB.remove(announcement.id);
      await memberPath.update({"announcements": listIdMB});

      return true;
    } catch(e) {
      return false;
    }
  }
}

