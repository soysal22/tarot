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
    cardName: "aceofswords",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/eightofswords.jpg',
    cardName: "eightofswords",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/fiveofswords.jpg',
    cardName: "fiveofswords",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/fourofwords.jpg',
    cardName: "fourofwords",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/kingofswords.jpg',
    cardName: "kingofswords",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/knightofswords.jpg',
    cardName: "knightofswords",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/nineofswords.jpg',
    cardName: "nineofswords",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/pageofswords.jpg',
    cardName: "pageofswords",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/queenofswords.jpg',
    cardName: "queenofswords",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/sevenofswords.jpg',
    cardName: "sevenofswords",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/sixofswords.jpg',
    cardName: "sixofswords",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/tenswords.jpg',
    cardName: "tenswords",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/threeofswords.jpg',
    cardName: "threeofswords",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/twoofswords.jpg',
    cardName: "twoofswords",
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
