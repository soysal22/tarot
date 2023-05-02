// ignore_for_file: library_private_types_in_public_api, depend_on_referenced_packages, unrelated_type_equality_checks

import 'package:card_flick/models/card__model.dart';
import 'package:card_flick/widgets/customFlipCard.dart';
import 'package:card_flick/widgets/float_Action_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Thewands extends StatefulWidget {
  const Thewands({Key? key}) : super(key: key);

  @override
  _ThewandsState createState() => _ThewandsState();
}

List<CardModel> thewandsImagesList = [
  CardModel(
    imageUrl: 'assets/images/thewands/aceofwands.jpg',
    title: "aceofwands",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/eightofwands.jpg',
    title: "eightofwands",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/fiveofwands.jpg',
    title: "fiveofwands",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/fourofwands.jpg',
    title: "fourofwands",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/kingofwands.jpg',
    title: "kingofwands",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/knightofwands.jpg',
    title: "knightofwands",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/nineofwands.jpg',
    title: "nineofwands",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/pageofwands.jpg',
    title: "pageofwands",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/queenofwands.jpg',
    title: "queenofwands",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/sevenofwands.jpg',
    title: "sevenofwands",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/sixofwands.jpg',
    title: "sixofwands",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/tenofwands.jpg',
    title: "tenofwands",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/threeofwands.jpg',
    title: "thehierophant",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/twoofwands.jpg',
    title: "twoofwands",
  ),
];

class _ThewandsState extends State<Thewands> {
  @override
  void initState() {
    thewandsImagesList.shuffle();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          CustomFloatActionButton(routePage: () => Get.toNamed("/thewands")),
      backgroundColor: const Color.fromARGB(255, 159, 56, 1),
      body: CustomFlipCard(
        comeToList: thewandsImagesList,
        nextroute: "/finalPage",
      ),
    );
  }
}
