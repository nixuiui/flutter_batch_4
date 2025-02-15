import 'package:flutter_batch_4/pages/day5/contact_page.dart';
import 'package:flutter_batch_4/pages/day5/home_page.dart';
import 'package:flutter_batch_4/pages/day5/profile_page.dart';
import 'package:flutter_batch_4/pages/day5/setting_page.dart';

class AppRoutes {
  static const home = "home";
  static const profile = "profile";
  static const setting = "setting";
  static const contact = "contact";
}

final routes = {
  AppRoutes.home: (context) => HomePage(),
  AppRoutes.profile: (context) => ProfilePage(),
  AppRoutes.setting: (context) => SettingPage(),
  AppRoutes.contact: (context) => ContactPage(),
};