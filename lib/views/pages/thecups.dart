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
    title: "aceofcups",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/eightofcups.jpg',
    title: "eightofcups",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/fiveofcups.jpg',
    title: "fiveofcups",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/fourofcups.jpg',
    title: "fourofcups",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/kingofcups.jpg',
    title: "kingofcups",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/knightofcups.jpg',
    title: "knightofcups",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/nineofcups.jpg',
    title: "nineofcups",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/pageofcups.jpg',
    title: "pageofcups",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/queenofcups.jpg',
    title: "queenofcups",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/sevenofcups.jpg',
    title: "sevenofcups",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/sixofcups.jpg',
    title: "sixofcups",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/tenofcups.jpg',
    title: "tenofcups",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/threeofcups.jpg',
    title: "thehierophant",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/twoofcups.jpg',
    title: "twoofcups",
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
