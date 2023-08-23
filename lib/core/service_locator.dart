import 'package:announcement/data/device_info_data_source/device_info_data_source.dart';
import 'package:announcement/data/fcm_data_source/fcm_data_source.dart';
import 'package:announcement/domain/repositories/announcement_repository.dart';
import 'package:announcement/domain/repositories/auth_repository.dart';
import 'package:announcement/domain/repositories/data_repository.dart';
import 'package:announcement/presentation/blocs/announcement/announcement_bloc.dart';
import 'package:announcement/presentation/blocs/auth/auth_bloc.dart';
import 'package:announcement/presentation/blocs/data/data_bloc.dart';
import 'package:announcement/presentation/blocs/message/message_bloc.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.I;

Future<void> setupLocator() async {
  /// data source
  locator.registerLazySingleton<FCMDataSource>(() => FCMDataSourceImpl(fcm: FirebaseMessaging.instance, local: FlutterLocalNotificationsPlugin()));
  locator.registerLazySingleton<DeviceInfoDataSource>(() => DeviceInfoDataSourceImpl(deviceInfoPlugin: DeviceInfoPlugin()));

  /// repository
  locator.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(auth: FirebaseAuth.instance, database: FirebaseDatabase.instance, storage: FirebaseStorage.instance, fcm: locator(), deviceInfo: locator()));
  locator.registerLazySingleton<AnnouncementRepository>(() => AnnouncementRepositoryImpl(database: FirebaseDatabase.instance, storage: FirebaseStorage.instance));
  locator.registerLazySingleton<DataRepository>(() => DataRepositoryImpl(database: FirebaseDatabase.instance, storage: FirebaseStorage.instance));

  /// bloc
  /// TODO: go to factory all bloc
  locator.registerFactory<AuthBloc>(() => AuthBloc(repository: locator()));
  locator.registerFactory<AnnouncementBloc>(() => AnnouncementBloc(repository: locator(), authRepository: locator()));
  locator.registerFactory<DataBloc>(() => DataBloc(dataRepository: locator(), authRepository: locator()));
  locator.registerFactory<MessageBloc>(() => MessageBloc(announcementRepository: locator(), authRepository: locator()));


  /// init
  await locator<FCMDataSource>().init();
}