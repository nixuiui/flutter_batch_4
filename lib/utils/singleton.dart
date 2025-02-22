import 'package:flutter_batch_4/data/database/app_db.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void singleton() {
  final appDatabase = AppDatabase();
  getIt.registerSingleton(appDatabase);
}