// ignore_for_file: library_private_types_in_public_api, depend_on_referenced_packages, unrelated_type_equality_checks

import 'package:card_flick/models/card__model.dart';
import 'package:card_flick/widgets/customFlipCard.dart';
import 'package:card_flick/widgets/float_Action_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Thecups extends StatefulWidget {
  const Thecups({Key? key}) : super(key: key);

  @override
  _ThecupsState createState() => _ThecupsState();
}

List<CardModel> thecupsImagesList = [
  CardModel(
    imageUrl: 'assets/images/thecups/aceofcups.jpg',
    cardName: "aceofcups",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/eightofcups.jpg',
    cardName: "eightofcups",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/fiveofcups.jpg',
    cardName: "fiveofcups",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/fourofcups.jpg',
    cardName: "fourofcups",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/kingofcups.jpg',
    cardName: "kingofcups",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/knightofcups.jpg',
    cardName: "knightofcups",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/nineofcups.jpg',
    cardName: "nineofcups",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/pageofcups.jpg',
    cardName: "pageofcups",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/queenofcups.jpg',
    cardName: "queenofcups",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/sevenofcups.jpg',
    cardName: "sevenofcups",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/sixofcups.jpg',
    cardName: "sixofcups",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/tenofcups.jpg',
    cardName: "tenofcups",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/threeofcups.jpg',
    cardName: "thehierophant",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/twoofcups.jpg',
    cardName: "twoofcups",
  ),
];

class _ThecupsState extends State<Thecups> {
  @override
  void initState() {
    thecupsImagesList.shuffle();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CustomFloatActionButton(
        routePage: () => Get.toNamed("/thecups"),
      ),
      backgroundColor: const Color.fromARGB(255, 159, 56, 1),
      body: CustomFlipCard(
        comeToList: thecupsImagesList,
        nextroute: "/thepentacles",
      ),
    );
  }
}
