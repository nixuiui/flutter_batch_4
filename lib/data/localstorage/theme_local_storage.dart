import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeLocalStorage {

  late final SharedPreferences sp;

  ThemeLocalStorage(this.sp);

  Future<void> setTheme(ThemeMode data) async {
    await sp.setString('theme', data.name);
  }

  ThemeMode getTheme() {
    final data = sp.getString('theme');
    return {
      "dark": ThemeMode.dark,
      "light": ThemeMode.light,
      "system": ThemeMode.system,
    }[data] ?? ThemeMode.system;
  }

}