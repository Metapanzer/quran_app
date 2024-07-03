import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_app/controller/nav_controller.dart';
import 'package:quran_app/page/about_page.dart';
import 'package:quran_app/page/home_page.dart';
import 'package:quran_app/page/prayer_page.dart';

class MainView extends StatelessWidget {
  final NavController navController = Get.put(NavController());

  final List<Widget> pages = [
    const AboutPage(),
    const HomePage(),
    const PrayerPage(),
  ];

  MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => pages[navController.selectedIndex.value]),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            currentIndex: navController.selectedIndex.value,
            onTap: navController.changePage,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'About',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Prayer',
              ),
            ],
          )),
    );
  }
}
