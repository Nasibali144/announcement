import 'package:announcement/domain/models/announcement_model.dart';
import 'package:firebase_database/firebase_database.dart';

abstract class AnnouncementRepository {
  Future<bool> upload(Announcement announcement);
  Future<List<Announcement>> getAllData();
}

class AnnouncementRepositoryImpl implements AnnouncementRepository {
  final FirebaseDatabase database;

  const AnnouncementRepositoryImpl({required this.database});

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
  Future<bool> upload(Announcement announcement) async {
    try {
      final folder = database.ref(Folder.announcement);
      final file = folder.push();
      announcement.id = file.key ?? announcement.hashCode.toString();
      file.set(announcement.toJson());
      return true;
    } catch(e) {
      return false;
    }
  }
}

sealed class Folder {
  static const announcement = "announcement";
}