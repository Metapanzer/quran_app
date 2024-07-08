import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_app/routes/app_routes.dart';

class PrayerPage extends StatelessWidget {
  const PrayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Get.toNamed(AppRoutes.setting);
            },
          ),
          title: const Text(
            'Prayer Time',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: const SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Feature will be available soon!',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ));
  }
}
