// ignore_for_file: library_private_types_in_public_api, depend_on_referenced_packages, unrelated_type_equality_checks

import 'package:card_flick/models/card__model.dart';
import 'package:card_flick/views/pages/thewands.dart';
import 'package:card_flick/widgets/customFlipCard.dart';
import 'package:card_flick/widgets/float_Action_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Theswords extends StatefulWidget {
  const Theswords({Key? key}) : super(key: key);

  @override
  _TheswordsState createState() => _TheswordsState();
}

List<CardModel> theswordsImagesList = [
  CardModel(
    id: 0,
    imageUrl: 'assets/images/majorarcana/death.jpg',
    title: "death",
  ),
  CardModel(
    id: 1,
    imageUrl: 'assets/images/majorarcana/hangedman.jpg',
    title: "hangedman",
  ),
  CardModel(
    id: 2,
    imageUrl: 'assets/images/majorarcana/judgement.jpg',
    title: "judgement",
  ),
  CardModel(
    id: 3,
    imageUrl: 'assets/images/majorarcana/justice.jpg',
    title: "justice",
  ),
  CardModel(
    id: 4,
    imageUrl: 'assets/images/majorarcana/strength.jpg',
    title: "strength",
  ),
  CardModel(
    id: 5,
    imageUrl: 'assets/images/majorarcana/temperance.jpg',
    title: "temperance",
  ),
  CardModel(
    id: 6,
    imageUrl: 'assets/images/majorarcana/thechariot.jpg',
    title: "thechariot",
  ),
  CardModel(
    id: 7,
    imageUrl: 'assets/images/majorarcana/thedevil.jpg',
    title: "thedevil",
  ),
  CardModel(
    id: 8,
    imageUrl: 'assets/images/majorarcana/theemperor.jpg',
    title: "theemperor",
  ),
  CardModel(
    id: 9,
    imageUrl: 'assets/images/majorarcana/theempress.jpg',
    title: "theempress",
  ),
  CardModel(
    id: 10,
    imageUrl: 'assets/images/majorarcana/thefool.jpg',
    title: "thefool",
  ),
  CardModel(
    id: 11,
    imageUrl: 'assets/images/majorarcana/thehermit.jpg',
    title: "thehermit",
  ),
  CardModel(
    id: 12,
    imageUrl: 'assets/images/majorarcana/thehierophant.jpg',
    title: "thehierophant",
  ),
  CardModel(
    id: 13,
    imageUrl: 'assets/images/majorarcana/thehighpriest.jpg',
    title: "thehighpriest",
  ),
  CardModel(
    id: 14,
    imageUrl: 'assets/images/majorarcana/thelovers.jpg',
    title: "thelovers",
  ),
  CardModel(
    id: 15,
    imageUrl: 'assets/images/majorarcana/themagician.jpg',
    title: "themagician",
  ),
  CardModel(
    id: 16,
    imageUrl: 'assets/images/majorarcana/themoon.jpg',
    title: "themoon",
  ),
  CardModel(
    id: 17,
    imageUrl: 'assets/images/majorarcana/thestar.jpg',
    title: "thestar",
  ),
  CardModel(
    id: 18,
    imageUrl: 'assets/images/majorarcana/thesun.jpg',
    title: "thesun",
  ),
  CardModel(
    id: 19,
    imageUrl: 'assets/images/majorarcana/thetower.jpg',
    title: "thetower",
  ),
  CardModel(
    id: 20,
    imageUrl: 'assets/images/majorarcana/theworld.jpg',
    title: "theworld",
  ),
  CardModel(
    id: 21,
    imageUrl: 'assets/images/majorarcana/wheloffortune.jpg',
    title: "wheloffortune",
  ),
];

class _TheswordsState extends State<Theswords> {
  @override
  void initState() {
    theswordsImagesList.shuffle();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          CustomFloatActionButton(routePage: () => Get.toNamed("/theswords")),
      backgroundColor: const Color.fromARGB(255, 159, 56, 1),
      body: CustomFlipCard(
        comeToList: theswordsImagesList,
        nextroute: "/thewands",
      ),
    );
  }
}
