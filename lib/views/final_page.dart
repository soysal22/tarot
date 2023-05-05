// ignore_for_file: prefer_is_empty, avoid_print, must_be_immutable
import 'dart:developer';

import 'package:card_flick/controller/card_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FinalPage extends StatelessWidget {
  FinalPage({super.key});

  final CardController cardController = Get.find();
  List? list;
  String? tit;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: const Color.fromARGB(255, 159, 56, 1),
        appBar: _appBar(context),
        floatingActionButton: ElevatedButton(
            style: ElevatedButton.styleFrom(),
            onPressed: () {
              Get.dialog(const Center(child: CircularProgressIndicator()));
              cardController.listAllDelete();
              Future.delayed(const Duration(seconds: 1));

              Get.offAndToNamed("/majorarcana");
            },
            child: const Text("Yeni Kart Seçmek İçin Tıklayınız ")),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(15),
                itemCount: cardController.saveSelectedCard?.length,
                itemBuilder: (context, index) {
                  print(cardController.saveSelectedCard.toString());

                  var data = cardController.saveSelectedCard?[index];

                  list?.add(data?.title);
                  log(list.toString());
                  return cardController.saveSelectedCard?.length == 0 ||
                          cardController.saveSelectedCard?.length == null
                      ? const Text("data is empty ")
                      : ListTile(
                          leading: Image.asset(
                            data?.imageUrl ?? "assets/images/back.png",
                            fit: BoxFit.cover,
                          ),
                          title: Text("Kartın Adı : ${data?.cardName}"),
                          subtitle: Text("Kartın Anlamı : ${data?.title}"),
                        );
                },
              ),
            ),
            const SizedBox(height: 25),
            Expanded(child: Text(list.toString())),
          ],
        ));
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      //backgroundColor: const Color.fromARGB(255, 159, 56, 1),
      automaticallyImplyLeading: false,
      leading: IconButton(
          onPressed: () {
            Get.dialog(const CircularProgressIndicator());
            cardController.listAllDelete();
            Future.delayed(const Duration(seconds: 1));

            Get.offAndToNamed("/majorarcana");
          },
          icon: const Icon(
            Icons.home,
            size: 30,
          )),
      centerTitle: true,
      title: Text("Seçtiğiniz Kartlar ",
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(color: Colors.white)),
    );
  }
}
