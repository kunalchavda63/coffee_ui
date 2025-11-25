import 'package:coffe_ui/core/services/local_storage/sharedpreference_service.dart';
import 'package:coffe_ui/core/services/navigation/router.dart';
import 'package:coffe_ui/core/services/repositories/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';


final getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  // Make sure Flutter engine is initialized before using any services
  WidgetsFlutterBinding.ensureInitialized();

  // Register router or other services
  getIt.registerLazySingleton<AppRouter>(() => AppRouter());
  getIt.registerLazySingleton<AuthRepository>(() => AuthRepository());
  await LocalPreferences().init();

  // Optional: Unfocus any field on first frame (not usually needed unless restoring from a state)
  WidgetsBinding.instance.addPostFrameCallback((_) {
    FocusManager.instance.primaryFocus?.unfocus();
  });
}
