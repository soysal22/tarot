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
    title: "aceofswords",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/eightofswords.jpg',
    title: "eightofswords",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/fiveofswords.jpg',
    title: "fiveofswords",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/fourofwords.jpg',
    title: "fourofwords",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/kingofswords.jpg',
    title: "kingofswords",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/knightofswords.jpg',
    title: "knightofswords",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/nineofswords.jpg',
    title: "nineofswords",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/pageofswords.jpg',
    title: "pageofswords",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/queenofswords.jpg',
    title: "queenofswords",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/sevenofswords.jpg',
    title: "sevenofswords",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/sixofswords.jpg',
    title: "sixofswords",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/tenswords.jpg',
    title: "tenswords",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/threeofswords.jpg',
    title: "threeofswords",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/twoofswords.jpg',
    title: "twoofswords",
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
