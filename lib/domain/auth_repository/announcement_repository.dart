import 'dart:io';

import 'package:announcement/domain/models/announcement_model.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';

abstract class AnnouncementRepository {
  Future<bool> upload(Announcement announcement, List<File> files);
  Future<bool> delete(String key);
  Future<List<Announcement>> getAllData();
}

class AnnouncementRepositoryImpl implements AnnouncementRepository {
  final FirebaseDatabase database;
  final FirebaseStorage storage;

  const AnnouncementRepositoryImpl({required this.database, required this.storage});

  @override
  Future<List<Announcement>> getAllData() async {
    final folder = database.ref(Folder.announcement);
    final data = await folder.get();
    if(!data.exists) {
      return [];
    }

    return data.children.map((item) {
      print(item.value);
      return Announcement.fromJson(Map<String, Object?>.from(item.value as Map));
    }).toList();
  }

  @override
  Future<bool> upload(Announcement announcement, List<File> files) async {
    try {
      /// storage
      final imageFolder = storage.ref(Folder.images);
      List<String> images = [];
      for(int i = 0; i < files.length; i++) {
        final path = files[i].path.substring(files[i].path.lastIndexOf("/") + 1);
        print(path);
        await imageFolder.child(path).putFile(files[i]);
        final url = await imageFolder.child(path).getDownloadURL();
        images.add(url);
      }
      
      /// database
      final folder = database.ref(Folder.announcement);
      final file = folder.push();
      announcement.id = file.key ?? announcement.hashCode.toString();
      announcement.images = images;
      file.set(announcement.toJson());
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

sealed class Folder {
  static const announcement = "announcement";
  static const images = "images";
}