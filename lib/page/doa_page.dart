import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';
import 'package:quran_app/controller/doa_controller.dart';
import 'package:quran_app/routes/app_routes.dart';

class DoaPage extends StatelessWidget {
  const DoaPage({super.key});

  @override
  Widget build(BuildContext context) {
    var doaController = Get.find<DoaController>();
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Get.toNamed(AppRoutes.setting);
            },
          ),
          title: const Text(
            'Doa',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Center(
              child: ListView.builder(
                  itemBuilder: (context, index) {
                    return GFAccordion(
                      title: doaController.doaList[index].judul,
                      contentChild: Text(
                        '${doaController.doaList[index].arab}\n\n${doaController.doaList[index].latin}',
                        style: const TextStyle(fontSize: 18),
                      ),
                    );
                  },
                  itemCount: doaController.doaList.length),
            ),
          ),
        ));
  }
}
