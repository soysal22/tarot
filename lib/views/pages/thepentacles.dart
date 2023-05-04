// ignore_for_file: library_private_types_in_public_api, depend_on_referenced_packages, unrelated_type_equality_checks

import 'package:card_flick/models/card__model.dart';
import 'package:card_flick/widgets/customFlipCard.dart';
import 'package:card_flick/widgets/float_Action_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Thepentacles extends StatefulWidget {
  const Thepentacles({Key? key}) : super(key: key);

  @override
  _ThepentaclesState createState() => _ThepentaclesState();
}

List<CardModel> thepentaclesImagesList = [
  CardModel(
    imageUrl: 'assets/images/thepentacles/aceofcoins.jpg',
    cardName: "aceofcoins",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/eightofcoins.jpg',
    cardName: "eightofcoins",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/fiveofcoins.jpg',
    cardName: "fiveofcoins",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/fourofcoins.jpg',
    cardName: "fourofcoins",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/kingofpentacles.jpg',
    cardName: "kingofpentacles",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/knightofpentacles.jpg',
    cardName: "knightofpentacles",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/nineofcoins.jpg',
    cardName: "nineofcoins",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/pageofpentacles.jpg',
    cardName: "pageofpentacles",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/queenofpentacles.jpg',
    cardName: "queenofpentacles",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/sevenofcoins.jpg',
    cardName: "sevenofcoins",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/sixofcoins.jpg',
    cardName: "sixofcoins",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/tenofcoins.jpg',
    cardName: "tenofcoins",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/threeofcoins.jpg',
    cardName: "threenofcoins",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/twoofcoins.jpg',
    cardName: "twoofcoins",
  ),
];

class _ThepentaclesState extends State<Thepentacles> {
  @override
  void initState() {
    thepentaclesImagesList.shuffle();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CustomFloatActionButton(
        routePage: () => Get.toNamed("/thepentacles"),
      ),
      backgroundColor: const Color.fromARGB(255, 159, 56, 1),
      body: CustomFlipCard(
        comeToList: thepentaclesImagesList,
        nextroute: "/theswords",
      ),
    );
  }
}
