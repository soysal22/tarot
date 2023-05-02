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
    title: "aceofcoins",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/eightofcoins.jpg',
    title: "eightofcoins",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/fiveofcoins.jpg',
    title: "fiveofcoins",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/fourofcoins.jpg',
    title: "fourofcoins",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/kingofpentacles.jpg',
    title: "kingofpentacles",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/knightofpentacles.jpg',
    title: "knightofpentacles",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/nineofcoins.jpg',
    title: "nineofcoins",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/pageofpentacles.jpg',
    title: "pageofpentacles",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/queenofpentacles.jpg',
    title: "queenofpentacles",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/sevenofcoins.jpg',
    title: "sevenofcoins",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/sixofcoins.jpg',
    title: "sixofcoins",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/tenofcoins.jpg',
    title: "tenofcoins",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/threeofcoins.jpg',
    title: "threenofcoins",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/twoofcoins.jpg',
    title: "twoofcoins",
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
