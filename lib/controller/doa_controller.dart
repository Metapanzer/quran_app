import 'package:get/get.dart';
import 'package:quran_app/model/doa.dart';
import 'package:quran_app/service/doa_service.dart';

class DoaController extends GetxController {
  List<Doa> doaList = [];
  final doaService = DoaService();

  @override
  void onInit() {
    super.onInit();
    getAllDoa();
  }

  void getAllDoa() async {
    doaList = await doaService.getAllDoa();
    update();
  }
}
