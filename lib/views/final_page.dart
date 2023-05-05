// ignore_for_file: prefer_is_empty, avoid_print, must_be_immutable
import 'dart:developer';

import 'package:card_flick/controller/card_controller.dart';
import 'package:card_flick/models/card__model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FinalPage extends StatelessWidget {
  FinalPage({super.key});

  final CardController cardController = Get.find();

  late ScrollController scrollController = ScrollController();
  List? listem = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        appBar: _appBar(context),
        floatingActionButton: _floatACtionButton(),
        body: Padding(
          padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
          child: Scrollbar(
            controller: scrollController,
            interactive: true,
            trackVisibility: true,
            thickness: 10,
            radius: const Radius.circular(15),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    controller: scrollController,
                    itemCount: cardController.saveSelectedCard?.length,
                    itemBuilder: (context, index) {
                      print(cardController.saveSelectedCard.toString());

                      var data = cardController.saveSelectedCard?[index];

                      listem?.add(data?.title ?? "listeye veri  gelmiyor");

                      return cardController.saveSelectedCard?.length == 0 ||
                              cardController.saveSelectedCard?.length == null
                          ? const Text("data is empty ")
                          : _cardImage(data, context);
                    },
                  ),
                ),
                SizedBox.expand(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                Text(listem.toString(),
                    softWrap: true,
                    overflow: TextOverflow.visible,
                    maxLines: null,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: 16,
                        )),
              ],
            ),
          ),
        ));
  }

  ElevatedButton _floatACtionButton() {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(),
        onPressed: () {
          Get.dialog(const Center(child: CircularProgressIndicator()));
          cardController.listAllDelete();
          Future.delayed(const Duration(seconds: 1));

          Get.offAndToNamed("/majorarcana");
        },
        child: const Text("Yeni Kart Seçmek İçin Tıklayınız "));
  }

  Card _cardImage(CardModel? data, BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              width: Get.width / 2.3,
              height: Get.width / 2,
              data?.imageUrl ?? "assets/images/back.png",
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            child: _cardTexts(data, context),
          ),
        ],
      ),
    );
  }

  Wrap _cardTexts(CardModel? data, BuildContext context) {
    return Wrap(
      runSpacing: 10,
      children: [
        Text(
          "Kartın Adı : ${data?.cardName}",
          softWrap: true,
          overflow: TextOverflow.visible,
          maxLines: null,
          style: Theme.of(context)
              .textTheme
              .labelLarge
              ?.copyWith(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: "Kartın Anlamı : ",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )),
          TextSpan(
              text: data?.title,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 16,
                  )),
        ])),
      ],
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      //bottomOpacity: 100,
      automaticallyImplyLeading: false,
      leading: IconButton(
          onPressed: () {
            Get.dialog(const CircularProgressIndicator());
            cardController.listAllDelete();
            Future.delayed(const Duration(seconds: 1));

            Get.offAndToNamed("/majorarcana");
          },
          icon: const Icon(Icons.home, size: 30, color: Colors.black)),
      centerTitle: true,
      title: Text("Seçtiğiniz Kartlar ",
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(color: Colors.black)),
    );
  }
}
