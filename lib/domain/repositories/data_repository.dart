import 'package:announcement/core/folder_names.dart';
import 'package:announcement/domain/models/announcement/announcement_model.dart';
import 'package:announcement/domain/models/category/category_model.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';

abstract class DataRepository {
  Future<List<Announcement>> allAnnouncement();
  Future<List<Category>> categories();
  Future<List<Announcement>> partAnnouncement(String id);
  Future<List<Announcement>> myAnnouncement(String uid);
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
  Future<List<Announcement>> allAnnouncement() => _fetchAnnouncement();

  @override
  Future<List<Announcement>> partAnnouncement(String id) => _fetchAnnouncement(key: "categoryId", value: id);

  @override
  Future<List<Announcement>> myAnnouncement(String uid) => _fetchAnnouncement(key: "uid", value: uid);

  Future<List<Announcement>> _fetchAnnouncement({String? key, Object? value}) async {
    final folder = database.ref(Folder.announcement);
    final DataSnapshot data;

    if(key != null) {
      data = await folder.equalTo(value, key: key).get();
    } else {
      data = await folder.get();
    }

    if(!data.exists) {
      return [];
    }

    return data.children.map((item) {
      return Announcement.fromJson(Map<String, Object?>.from(item.value as Map));
    }).toList();
  }
}

