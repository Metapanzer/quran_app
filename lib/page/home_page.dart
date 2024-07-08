import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_app/constant/custom_color.dart';
import 'package:quran_app/controller/surah_controller.dart';
import 'package:quran_app/routes/app_routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
          'Quran App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Assalaamu\'alaikum!!!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(CustomColor.secondary),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '${FirebaseAuth.instance.currentUser!.email}',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 29,
              ),
              Container(
                alignment: Alignment.center,
                height: 128,
                width: double.infinity,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color(CustomColor.lightSecondary)),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Image(
                                      image: AssetImage(
                                          'assets/icons/icon-last-read.png')),
                                  SizedBox(
                                    width: 13,
                                  ),
                                  Text(
                                    'Last Read',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Al-Fatihah',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Surah - 1',
                                style: TextStyle(fontSize: 14),
                              )
                            ],
                          ),
                          Container(
                              height: 84,
                              width: 74,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/icons/icon-quran-closed.png')),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              const Center(
                child: Text(
                  'Surah',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(CustomColor.primary)),
                ),
              ),
              const Divider(
                color: Color(CustomColor.primary),
                thickness: 2,
              ),
              SizedBox(
                  height: 460,
                  child: GetBuilder<SurahController>(builder: (controller) {
                    if (controller.surahList.isEmpty) {
                      return const Center(child: CircularProgressIndicator());
                    } else {
                      return ListView.builder(
                        itemCount: controller.surahList.length,
                        itemBuilder: (context, index) {
                          return Card(
                            child: ListTile(
                              onTap: () => Get.toNamed(AppRoutes.detailSurah,
                                  arguments: {
                                    'nomor': controller.surahList[index].nomor
                                  }),
                              title: Text(
                                controller.surahList[index].namaLatin,
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                  'Verse : ${controller.surahList[index].jumlahAyat}'),
                              trailing: Text(
                                controller.surahList[index].nama,
                                style: const TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                            ),
                          );
                        },
                      );
                    }
                  })),
            ],
          ),
        ),
      ),
    );
  }
}
