import 'package:announcement/core/folder_names.dart';
import 'package:announcement/domain/models/announcement/announcement_model.dart';
import 'package:announcement/domain/models/category/category_model.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';

/// https://petercoding.com/firebase/2020/02/16/using-firebase-queries-in-flutter/
abstract class DataRepository {
  Future<List<Announcement>> allAnnouncement(String uid);
  Future<List<Category>> categories();
  Future<List<Announcement>> partAnnouncement(String id, String uid);
  Future<List<Announcement>> myAnnouncement(String uid);
  Future<List<Announcement>> likeAnnouncement(List<String> likes);
}

class DataRepositoryImpl implements DataRepository {
  final FirebaseDatabase database;
  final FirebaseStorage storage;

  const DataRepositoryImpl({required this.database, required this.storage});

  @override
  Future<List<Category>> categories() async {
    final folder = database.ref(Folder.category);
    final data = await folder.get();

    if(!data.exists) return [];

    return data.children.map((item) {
      return Category.fromJson(Map<String, Object?>.from(item.value as Map));
    }).toList();
  }

  @override
  Future<List<Announcement>> allAnnouncement(String uid) => _fetchAnnouncement(uid: uid);

  @override
  Future<List<Announcement>> partAnnouncement(String id, String uid) => _fetchAnnouncement(key: "categoryId", value: id, uid: uid);

  @override
  Future<List<Announcement>> myAnnouncement(String uid) => _fetchAnnouncement(key: "userId", value: uid, uid: uid);

  Future<List<Announcement>> _fetchAnnouncement({required String uid,String? key, Object? value}) async {
    final folder = database.ref(Folder.announcement);
    final DataSnapshot data;

    if(key != null) {
      final result = await folder.orderByChild(key).equalTo(value).once();
      data = result.snapshot;
    } else {
      data = await folder.get();
    }

    if(!data.exists) {
      return [];
    }

    return data.children.map((item) {
      final announcement = Announcement.fromJson(Map<String, Object?>.from(item.value as Map));
      return announcement.copyWith(isFavorite: announcement.likes.contains(uid));
    }).toList();
  }

  @override
  Future<List<Announcement>> likeAnnouncement(List<String> likes) async {
    final folder = database.ref(Folder.announcement);
    final List<DataSnapshot> json = [];
    for(String announcementId in likes) {
      final data = await folder.child(announcementId).get();
      json.add(data);
    }

    return json.map((item) {
      final announcement = Announcement.fromJson(Map<String, Object?>.from(item.value as Map));
      return announcement.copyWith(isFavorite: true);
    }).toList();
  }
}

