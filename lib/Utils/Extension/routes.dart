import 'package:flutter_batch_5/Pages/home_page.dart';
import 'package:flutter_batch_5/Pages/login_page.dart';
import 'package:flutter_batch_5/Pages/profile_page.dart';
import 'package:flutter_batch_5/Pages/setting_page.dart';
import 'package:flutter_batch_5/Pages/tab_page.dart';

class AppRoutes {
  static String home = 'home';
  static String profile = 'profile';
  static String tabPage = 'tab_page';
  static String setting = 'setting';
  static String login = 'login';

}

final routes = {
  AppRoutes.home: (context) => HomePage(),
  AppRoutes.profile: (context) => ProfilePage(),
  AppRoutes.tabPage: (context) => TabPage(),
  AppRoutes.setting: (context) => SettingPage(),
  AppRoutes.login: (context) => LoginPage(),
};