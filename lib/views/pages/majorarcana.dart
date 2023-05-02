// ignore_for_file: library_private_types_in_public_api, depend_on_referenced_packages, unrelated_type_equality_checks

import 'package:card_flick/models/card__model.dart';
import 'package:card_flick/widgets/customFlipCard.dart';
import 'package:card_flick/widgets/float_Action_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:screenshot/screenshot.dart';

class Majorarcana extends StatefulWidget {
  const Majorarcana({Key? key}) : super(key: key);

  @override
  _MajorarcanaState createState() => _MajorarcanaState();
}

List<CardModel> majorarcanaImagesList = [
  CardModel(
    imageUrl: 'assets/images/majorarcana/death.jpg',
    title: "death",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/hangedman.jpg',
    title: "hangedman",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/judgement.jpg',
    title: "judgement",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/justice.jpg',
    title: "justice",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/strength.jpg',
    title: "strength",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/temperance.jpg',
    title: "temperance",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thechariot.jpg',
    title: "thechariot",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thedevil.jpg',
    title: "thedevil",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/theemperor.jpg',
    title: "theemperor",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/theempress.jpg',
    title: "theempress",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thefool.jpg',
    title: "thefool",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thehermit.jpg',
    title: "thehermit",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thehierophant.jpg',
    title: "thehierophant",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thehighpriest.jpg',
    title: "thehighpriest",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thelovers.jpg',
    title: "thelovers",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/themagician.jpg',
    title: "themagician",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/themoon.jpg',
    title: "themoon",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thestar.jpg',
    title: "thestar",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thesun.jpg',
    title: "thesun",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thetower.jpg',
    title: "thetower",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/theworld.jpg',
    title: "theworld",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/wheloffortune.jpg',
    title: "wheloffortune",
  ),
];

class _MajorarcanaState extends State<Majorarcana> {
  @override
  void initState() {
    majorarcanaImagesList.shuffle();
    super.initState();
  }

  ScreenshotController screenshotController = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: Screenshot(
      //     controller: screenshotController,
      //     child: const Icon(Icons.camera_alt_outlined),
      //   ),
      // ),
      floatingActionButton: CustomFloatActionButton(
        routePage: () => Get.toNamed("/majorarcana"),
      ),
      backgroundColor: const Color.fromARGB(255, 159, 56, 1),
      body: CustomFlipCard(
        comeToList: majorarcanaImagesList,
        nextroute: "/thecups",
      ),
    );
  }
}
