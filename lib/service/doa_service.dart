import 'package:dio/dio.dart';
import 'package:quran_app/model/doa.dart';

class DoaService {
  Dio dio = Dio();
  final apiUrl = 'https://open-api.my.id/api/doa';

  Future<List<Doa>> getAllDoa() async {
    try {
      Response response = await dio.get(apiUrl);
      if (response.statusCode == 200) {
        final data = response.data;
        List<Doa> doaList =
            List<Doa>.from(data.map((doa) => Doa.fromJson(doa)));
        return doaList;
      }
      throw Exception('Failed to load list of doa in service');
    } catch (e) {
      rethrow;
    }
  }
}
