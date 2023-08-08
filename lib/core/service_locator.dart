import 'package:announcement/domain/auth_repository/announcement_repository.dart';
import 'package:announcement/domain/auth_repository/auth_repository.dart';
import 'package:announcement/presentation/blocs/announcement/announcement_bloc.dart';
import 'package:announcement/presentation/blocs/auth/auth_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.I;

Future<void> setupLocator() async {
  /// repository
  locator.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(auth: FirebaseAuth.instance));
  locator.registerLazySingleton<AnnouncementRepository>(() => AnnouncementRepositoryImpl(database: FirebaseDatabase.instance));

  /// bloc
  locator.registerFactory<AuthBloc>(() => AuthBloc(repository: locator()));
  locator.registerFactory<AnnouncementBloc>(() => AnnouncementBloc(repository: locator()));
}