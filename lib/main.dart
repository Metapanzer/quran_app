import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_app/constant/custom_color.dart';
import 'package:quran_app/controller/doa_controller.dart';
import 'package:quran_app/controller/surah_controller.dart';
import 'package:quran_app/firebase_options.dart';
import 'package:quran_app/routes/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Get.put<SurahController>(SurahController(), permanent: true);
  Get.put<DoaController>(DoaController());
  runApp(const QuranApp());
}

class QuranApp extends StatelessWidget {
  const QuranApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Al-Quran App',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(CustomColor.tertiary),
          centerTitle: true,
        ),
        scaffoldBackgroundColor: const Color(CustomColor.tertiary),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: AppRoutes.routes,
    );
  }
}
