// ignore_for_file: library_private_types_in_public_api, depend_on_referenced_packages, unrelated_type_equality_checks

import 'package:card_flick/models/card__model.dart';
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
    imageUrl: 'assets/images/theswords/aceofswords.jpg',
    cardName: "Ace Of Swords",
    title: " Keskin zeka ve net düşünce süreci ",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/eightofswords.jpg',
    cardName: "eightofswords",
    title: "",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/fiveofswords.jpg',
    cardName: "fiveofswords",
    title: "",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/fourofwords.jpg',
    cardName: "fourofwords",
    title: "",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/kingofswords.jpg',
    cardName: "kingofswords",
    title: "",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/knightofswords.jpg',
    cardName: "knightofswords",
    title: "",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/nineofswords.jpg',
    cardName: "nineofswords",
    title: "",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/pageofswords.jpg',
    cardName: "pageofswords",
    title: "",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/queenofswords.jpg',
    cardName: "queenofswords",
    title: "",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/sevenofswords.jpg',
    cardName: "sevenofswords",
    title: "",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/sixofswords.jpg',
    cardName: "sixofswords",
    title: "",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/tenswords.jpg',
    cardName: "tenswords",
    title: "",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/threeofswords.jpg',
    cardName: "threeofswords",
    title: "",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/twoofswords.jpg',
    cardName: "Two Of Swords",
    title: "Kararsızlık süreci",
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
