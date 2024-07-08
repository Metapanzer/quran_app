import 'package:get/get.dart';
import 'package:quran_app/page/about_page.dart';
import 'package:quran_app/page/detail_surah_page.dart';
import 'package:quran_app/page/home_page.dart';
import 'package:quran_app/page/login_page.dart';
import 'package:quran_app/page/main_view.dart';
import 'package:quran_app/page/privacy_page.dart';
import 'package:quran_app/page/register_page.dart';
import 'package:quran_app/page/setting_page.dart';
import 'package:quran_app/page/start_page.dart';
import 'package:quran_app/page/support_page.dart';

class AppRoutes {
  static const start = '/';
  static const login = '/login';
  static const register = '/register';
  static const main = '/quran';
  static const home = '/quran/home';
  static const setting = '/quran/settings';
  static const support = '/quran/support';
  static const about = '/quran/about';
  static const privacy = '/quran/privacy';
  static const detailSurah = '/quran/surah/:nomor';

  static final routes = [
    GetPage(name: start, page: () => const StartPage()),
    GetPage(name: login, page: () => const LoginPage()),
    GetPage(name: register, page: () => const RegisterPage()),
    GetPage(name: main, page: () => MainView()),
    GetPage(name: home, page: () => const HomePage()),
    GetPage(name: support, page: () => const SupportPage()),
    GetPage(name: about, page: () => const AboutPage()),
    GetPage(name: privacy, page: () => const PrivacyPage()),
    GetPage(name: setting, page: () => const SettingPage()),
    GetPage(name: detailSurah, page: () => DetailSurahPage()),
  ];
}
