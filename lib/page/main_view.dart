import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_app/controller/nav_controller.dart';
import 'package:quran_app/page/doa_page.dart';
import 'package:quran_app/page/home_page.dart';
import 'package:quran_app/page/prayer_page.dart';

class MainView extends StatelessWidget {
  final NavController navController = Get.put(NavController());

  final List<Widget> pages = [
    const PrayerPage(),
    const HomePage(),
    const DoaPage(),
  ];

  MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => pages[navController.selectedIndex.value]),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            currentIndex: navController.selectedIndex.value,
            onTap: navController.changePage,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset('assets/icons/icon-mosque.png'),
                label: 'Prayer',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/icons/icon-quran-opened.png'),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/icons/icon-book.png'),
                label: 'Doa',
              ),
            ],
          )),
    );
  }
}
