import 'dart:io';
import 'package:announcement/core/folder_names.dart';
import 'package:announcement/domain/models/announcement/announcement_model.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';

abstract class AnnouncementRepository {
  Future<bool> upload(Announcement announcement, List<File> files);
  Future<bool> delete(String key);
}

class AnnouncementRepositoryImpl implements AnnouncementRepository {
  final FirebaseDatabase database;
  final FirebaseStorage storage;

  const AnnouncementRepositoryImpl({required this.database, required this.storage});


  @override
  Future<bool> upload(Announcement announcement, List<File> files) async {
    try {
      /// storage
      final imageFolder = storage.ref(Folder.images);
      List<String> images = [];
      for(int i = 0; i < files.length; i++) {
        final path = files[i].path.substring(files[i].path.lastIndexOf("/") + 1);
        await imageFolder.child(path).putFile(files[i]);
        final url = await imageFolder.child(path).getDownloadURL();
        images.add(url);
      }
      
      /// database
      final folder = database.ref(Folder.announcement);
      final file = folder.push();
      final data = announcement.copyWith(id: file.key ?? announcement.hashCode.toString(), images: images);
      file.set(data.toJson());
      return true;
    } catch(e) {
      return false;
    }
  }

  @override
  Future<bool> delete(String key) async {
    try {
      final folder = database.ref(Folder.announcement);
      await folder.child(key).remove();
      return true;
    } catch(e) {
      return false;
    }
  }
}

