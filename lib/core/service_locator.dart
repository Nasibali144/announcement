import 'package:announcement/domain/repositories/announcement_repository.dart';
import 'package:announcement/domain/repositories/auth_repository.dart';
import 'package:announcement/domain/repositories/data_repository.dart';
import 'package:announcement/presentation/blocs/announcement/announcement_bloc.dart';
import 'package:announcement/presentation/blocs/auth/auth_bloc.dart';
import 'package:announcement/presentation/blocs/data/data_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.I;

Future<void> setupLocator() async {
  /// repository
  locator.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(auth: FirebaseAuth.instance, database: FirebaseDatabase.instance, storage: FirebaseStorage.instance));
  locator.registerLazySingleton<AnnouncementRepository>(() => AnnouncementRepositoryImpl(database: FirebaseDatabase.instance, storage: FirebaseStorage.instance));
  locator.registerLazySingleton<DataRepository>(() => DataRepositoryImpl(database: FirebaseDatabase.instance, storage: FirebaseStorage.instance));

  /// bloc
  /// TODO: go to factory all bloc
  locator.registerFactory<AuthBloc>(() => AuthBloc(repository: locator()));
  locator.registerFactory<AnnouncementBloc>(() => AnnouncementBloc(repository: locator()));
  locator.registerFactory<DataBloc>(() => DataBloc(dataRepository: locator(), authRepository: locator()));
}