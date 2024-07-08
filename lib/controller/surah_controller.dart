import 'package:get/get.dart';
import 'package:quran_app/model/surah.dart';
import 'package:quran_app/service/surah_service.dart';

class SurahController extends GetxController {
  List<Surah> surahList = [];
  SurahService surahService = SurahService();

  @override
  void onInit() {
    super.onInit();
    getAllSurah();
  }

  void getAllSurah() async {
    try {
      surahList = await surahService.getAllSurah();
      update();
    } catch (e) {
      throw Exception('Failed to load list of surah');
    }
  }
}
