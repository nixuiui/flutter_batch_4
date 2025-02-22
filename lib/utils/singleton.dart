import 'package:flutter_batch_4/data/database/app_db.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

Future<void> singleton() async {
  final appDatabase = AppDatabase();
  getIt.registerSingleton(appDatabase);

  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerSingleton(sharedPreferences);
}