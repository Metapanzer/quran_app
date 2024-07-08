import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:quran_app/constant/custom_color.dart';
import 'package:quran_app/routes/app_routes.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Settings',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 29,
              ),
              SizedBox(
                width: 280,
                height: 54,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  child: const Text('Account',
                      style: TextStyle(
                          fontSize: 18, color: Color(CustomColor.primary))),
                ),
              ),
              const SizedBox(
                height: 29,
              ),
              SizedBox(
                width: 280,
                height: 54,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  child: const Text('Notification',
                      style: TextStyle(
                          fontSize: 18, color: Color(CustomColor.primary))),
                ),
              ),
              const SizedBox(
                height: 29,
              ),
              SizedBox(
                width: 280,
                height: 54,
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(AppRoutes.privacy);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  child: const Text('Privacy & Security',
                      style: TextStyle(
                          fontSize: 18, color: Color(CustomColor.primary))),
                ),
              ),
              const SizedBox(
                height: 29,
              ),
              SizedBox(
                width: 280,
                height: 54,
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(AppRoutes.support);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  child: const Text('Help & Support',
                      style: TextStyle(
                          fontSize: 18, color: Color(CustomColor.primary))),
                ),
              ),
              const SizedBox(
                height: 29,
              ),
              SizedBox(
                width: 280,
                height: 54,
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(AppRoutes.about);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  child: const Text('About',
                      style: TextStyle(
                          fontSize: 18, color: Color(CustomColor.primary))),
                ),
              )
            ],
          ),
        ));
  }
}
