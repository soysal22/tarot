// ignore_for_file: library_private_types_in_public_api, depend_on_referenced_packages, unrelated_type_equality_checks

import 'package:card_flick/models/card__model.dart';
import 'package:card_flick/views/pages/thepentacles.dart';
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
    id: 0,
    imageUrl: 'assets/images/majorarcana/aceofcups.jpg',
    title: "aceofcups",
  ),
  CardModel(
    id: 1,
    imageUrl: 'assets/images/majorarcana/eightofcups.jpg',
    title: "eightofcups",
  ),
  CardModel(
    id: 2,
    imageUrl: 'assets/images/majorarcana/fiveofcups.jpg',
    title: "fiveofcups",
  ),
  CardModel(
    id: 3,
    imageUrl: 'assets/images/majorarcana/fourofcups.jpg',
    title: "fourofcups",
  ),
  CardModel(
    id: 4,
    imageUrl: 'assets/images/majorarcana/kingofcups.jpg',
    title: "kingofcups",
  ),
  CardModel(
    id: 5,
    imageUrl: 'assets/images/majorarcana/knightofcups.jpg',
    title: "knightofcups",
  ),
  CardModel(
    id: 6,
    imageUrl: 'assets/images/majorarcana/nineofcups.jpg',
    title: "nineofcups",
  ),
  CardModel(
    id: 7,
    imageUrl: 'assets/images/majorarcana/pageofcups.jpg',
    title: "pageofcups",
  ),
  CardModel(
    id: 8,
    imageUrl: 'assets/images/majorarcana/queenofcups.jpg',
    title: "queenofcups",
  ),
  CardModel(
    id: 9,
    imageUrl: 'assets/images/majorarcana/sevenofcups.jpg',
    title: "sevenofcups",
  ),
  CardModel(
    id: 10,
    imageUrl: 'assets/images/majorarcana/sixofcups.jpg',
    title: "sixofcups",
  ),
  CardModel(
    id: 11,
    imageUrl: 'assets/images/majorarcana/tenofcups.jpg',
    title: "tenofcups",
  ),
  CardModel(
    id: 12,
    imageUrl: 'assets/images/majorarcana/threeofcups.jpg',
    title: "thehierophant",
  ),
  CardModel(
    id: 13,
    imageUrl: 'assets/images/majorarcana/twoofcups.jpg',
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
