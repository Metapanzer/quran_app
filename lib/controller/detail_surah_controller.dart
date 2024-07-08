import 'package:get/get.dart';
import 'package:quran_app/model/detail_surah.dart';
import 'package:quran_app/service/surah_service.dart';

class DetailSurahController extends GetxController {
  DetailSurah? detailSurah;
  SurahService surahService = SurahService();

  @override
  void onInit() {
    super.onInit();
    fetchDetailSurah();
  }

  void fetchDetailSurah() async {
    try {
      var surahId = Get.arguments['nomor']; // Assuming you pass the surah ID
      var response = await surahService.getSurahById(surahId);
      detailSurah = DetailSurah.fromMap(response);
      update();
    } catch (e) {
      print(e);
      throw Exception('Failed to load surah detail');
    }
  }
}
