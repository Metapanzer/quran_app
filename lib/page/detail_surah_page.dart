import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_app/constant/custom_color.dart';
import 'package:quran_app/controller/detail_surah_controller.dart';
import 'package:quran_app/routes/app_routes.dart';

class DetailSurahPage extends StatelessWidget {
  final DetailSurahController detailSurahController =
      Get.put(DetailSurahController());

  DetailSurahPage({super.key});

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
          'Surah',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 10),
        child: GetBuilder<DetailSurahController>(
          builder: (controller) {
            if (controller.detailSurah == null) {
              return const Center(child: CircularProgressIndicator());
            } else {
              var surahDetail = controller.detailSurah!;
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            surahDetail.namaLatin,
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(CustomColor.primary)),
                          ),
                          Text(
                            'Verse : ${surahDetail.jumlahAyat}',
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(CustomColor.primary)),
                          ),
                          Text(
                            '(${surahDetail.arti})',
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(CustomColor.primary)),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset('assets/icons/icon-share.png'),
                          const SizedBox(width: 32),
                          Image.asset('assets/icons/icon-play.png'),
                          const SizedBox(width: 32),
                          Image.asset('assets/icons/icon-bookmark.png'),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: surahDetail.ayat.length,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          width: double.infinity,
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment
                                      .stretch, // Align text to the right
                                  children: [
                                    Text(
                                      surahDetail.ayat[index].teksArab,
                                      textAlign: TextAlign.right,
                                      softWrap: true,
                                      overflow: TextOverflow
                                          .clip, // Ensure text does not overflow
                                      style: const TextStyle(
                                          fontSize:
                                              24), // Adjust the font size as needed
                                    ),
                                    const SizedBox(
                                        height:
                                            12), // Add some spacing between the texts
                                    Text(
                                      surahDetail.ayat[index].teksIndonesia,
                                      textAlign: TextAlign.left,
                                      softWrap: true,
                                      overflow: TextOverflow
                                          .clip, // Ensure text does not overflow
                                      style: const TextStyle(
                                          fontSize:
                                              14), // Adjust the font size as needed
                                    ),
                                    const SizedBox(height: 27),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
