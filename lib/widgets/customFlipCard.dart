// ignore_for_file: file_names, depend_on_referenced_packages

import 'dart:developer';

import 'package:card_flick/controller/card_controller.dart';
import 'package:card_flick/models/card__model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomFlipCard extends StatelessWidget {
  final List<CardModel> comeToList;
  final String nextroute;

  CustomFlipCard(
      {super.key, required this.comeToList, required this.nextroute});

  final CardController cardController = Get.find();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scrollbar(
        interactive: true,
        trackVisibility: true,
        thickness: 10,
        radius: const Radius.circular(15),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: comeToList.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () async {
                _customDialog(context, index);
                // Future.delayed(const Duration(seconds: 1)).then((value) {
                //   log("Seçilen kartın içeriği :${comeToList[index].toJson()}");
                //   // log(comeToList[index].toJson().toString());
                //   cardController.listAdd(comeToList[index]);
                //   // Get.toNamed(nextroute);
                // });
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: _closeImage()),
              ),
            );
          },
        ),
      ),
    );
  }

  Future<dynamic> _customDialog(BuildContext context, int index) {
    return showGeneralDialog(
      barrierDismissible: false,
      barrierColor: const Color.fromARGB(41, 237, 239, 241),
      context: context,
      barrierLabel: "",
      pageBuilder: (context, animation, secondaryAnimation) {
        return Container();
      },
      transitionDuration: const Duration(milliseconds: 300),
      transitionBuilder: (context, a1, a2, child) {
        return ScaleTransition(
          scale: Tween(begin: 0.5, end: 1.0).animate(a1),
          child: FadeTransition(
            opacity: Tween(begin: 0.5, end: 1.0).animate(a1),
            child: Stack(children: [
              AlertDialog(
                title: _title(),
                content: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.only(top: 15, bottom: 15)),
                    onPressed: () {
                      Get.toNamed(nextroute);
                      log("Seçilen kartın içeriği :${comeToList[index].toJson()}");
                      // log(comeToList[index].toJson().toString());
                      cardController.listAdd(comeToList[index]);
                    },
                    child: const Text(
                      "Sonraki Sayfa ",
                      style: TextStyle(fontSize: 18),
                    )),
              ),
              _closeIcon(context),
            ]),
          ),
        );
      },
    );
  }

  Text _title() {
    return const Text("Diğer Kartları seçmek için Tıklayınız Veya Bekleyiniz",
        textAlign: TextAlign.center);
  }

  Positioned _closeIcon(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height / 1.75,
      right: MediaQuery.of(context).size.width / 5,
      child: CircleAvatar(
        backgroundColor: Colors.red,
        child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(
              Icons.close,
              size: 35,
              color: Colors.white,
            )),
      ),
    );
  }

  Container _closeImage() {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 49, 0, 58),
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: AssetImage('assets/images/back.png'),
        ),
      ),
    );
  }
}

/*// ignore_for_file: file_names, depend_on_referenced_packages

import 'package:card_flick/models/card__model.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class CustomFlipCard extends StatelessWidget {
  final List<CardModel> comeToList;
  final Function() nextPage;

  const CustomFlipCard(
      {super.key, required this.comeToList, required this.nextPage});

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: comeToList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              // width: 50,
              // height: 80,
              child: FlipCard(
                onFlipDone: (isFront) {
                  if (isFront) {
                    _customShowDialog(context, index);
                    Future.delayed(const Duration(seconds: 1))
                        .then((value) => nextPage);
                  }
                },
                fill: Fill.fillBack,
                front: _closeImage(),
                back: comeToImage(index),
              ),
            ),
          );
        },
      ),
    );
  }

  Future<dynamic> _customShowDialog(BuildContext context, int index) {
    return showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(comeToList[index].title ?? "title",
              textAlign: TextAlign.center),
          content: CircleAvatar(
            child: Center(
              child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                    Icons.close,
                    size: 30,
                  )),
            ),
          ),
        );
      },
    );
  }

  Container comeToImage(int index) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 49, 0, 58),
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(comeToList[index].imageUrl!),
        ),
      ),
    );
  }

  Container _closeImage() {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 49, 0, 58),
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: AssetImage('assets/images/back.png'),
        ),
      ),
    );
  }
}
 */