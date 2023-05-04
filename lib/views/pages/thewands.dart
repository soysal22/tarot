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
    cardName: "aceofwands",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/eightofwands.jpg',
    cardName: "eightofwands",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/fiveofwands.jpg',
    cardName: "fiveofwands",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/fourofwands.jpg',
    cardName: "fourofwands",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/kingofwands.jpg',
    cardName: "kingofwands",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/knightofwands.jpg',
    cardName: "knightofwands",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/nineofwands.jpg',
    cardName: "nineofwands",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/pageofwands.jpg',
    cardName: "pageofwands",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/queenofwands.jpg',
    cardName: "queenofwands",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/sevenofwands.jpg',
    cardName: "sevenofwands",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/sixofwands.jpg',
    cardName: "sixofwands",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/tenofwands.jpg',
    cardName: "tenofwands",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/threeofwands.jpg',
    cardName: "thehierophant",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/twoofwands.jpg',
    cardName: "twoofwands",
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
        nextroute: "/chatFinal",
      ),
    );
  }
}
