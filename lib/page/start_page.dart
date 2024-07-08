import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_app/constant/custom_color.dart';
import 'package:quran_app/routes/app_routes.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 83),
          child: Center(
            child: Column(
              children: [
                const Text(
                  'Qur\'an App',
                  style: TextStyle(
                    color: Color(CustomColor.primary),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                const Text(
                  'Learn Quran every day and \n recite once everyday',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(CustomColor.secondary),
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 41,
                ),
                SizedBox(
                  height: 457, // Increase the height to accommodate the button
                  width: 296,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    clipBehavior: Clip.none, // Ensure the button is not clipped
                    children: [
                      Container(
                        height: 437,
                        width: 296,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color(CustomColor.primary),
                          image: DecorationImage(
                            image: AssetImage('assets/images/image-mosque.png'),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -20, // Adjust position as needed
                        child: ElevatedButton(
                          onPressed: () {
                            Get.toNamed(AppRoutes.login);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(CustomColor.secondary),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: const Text(
                            'Get Started',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
