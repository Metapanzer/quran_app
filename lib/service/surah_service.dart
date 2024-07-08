import 'package:dio/dio.dart';
import 'package:quran_app/model/surah.dart';

class SurahService {
  Dio dio = Dio();
  String apiUrl = 'https://equran.id/api/v2/surat';

  Future<List<Surah>> getAllSurah() async {
    try {
      Response response = await dio.get(apiUrl);
      if (response.statusCode == 200) {
        final data = response.data['data'];
        List<Surah> surahList =
            List<Surah>.from(data.map((surah) => Surah.fromJson(surah)));
        return surahList;
      }
      throw Exception('Failed to load list of surah in service');
    } catch (e) {
      rethrow;
    }
  }

  Future<Map<String, dynamic>> getSurahById(int id) async {
    try {
      Response response = await dio.get('$apiUrl/$id');
      if (response.statusCode != 200) {
        throw Exception('Failed to load surah detail in service');
      }
      return response.data['data'];
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
