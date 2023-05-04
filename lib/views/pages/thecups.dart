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
    cardName: "Ace Of Cups",
    title: "Yeni bir duygusal başlangıç.",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/eightofcups.jpg',
    cardName: "Eight Of Cups",
    title: "Yeni bir yola çıkma kararı almak",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/fiveofcups.jpg',
    cardName: "Five Of Cups",
    title: "Kayıp veya üzüntü.",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/fourofcups.jpg',
    cardName: "Four Of Cups",
    title: " Duygusal tatminsizlik veya hayal kırıklığı",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/kingofcups.jpg',
    cardName: "King Of Cups",
    title: "Duygusal zeka, empati ve anlayış.",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/knightofcups.jpg',
    cardName: "Knight Of Cups",
    title: "Duygusal romantizm ve hayallerin peşinde koşmak.",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/nineofcups.jpg',
    cardName: "Nine of Cups",
    title: "Duygusal tatmin veya mutluluk.",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/pageofcups.jpg',
    cardName: "Page of Cups",
    title: "Yaratıcılık ve duygusal keşifler.",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/queenofcups.jpg',
    cardName: "Queen of Cupsv",
    title: "Duygusal zeka, empati ve anlayış.",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/sevenofcups.jpg',
    cardName: "Seven of Cups",
    title: "Hayallerin gerçekleştirilmesi için seçeneklerin araştırılması.",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/sixofcups.jpg',
    cardName: "Six of Cups",
    title: "Nostalji veya geçmişe dönüş.",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/tenofcups.jpg',
    cardName: "tenofcups",
    title: "",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/threeofcups.jpg',
    cardName: "Three of Cups",
    title: "Kutlama ve mutluluk",
  ),
  CardModel(
    imageUrl: 'assets/images/thecups/twoofcups.jpg',
    cardName: "Two of Cups",
    title: "İlişkilerde uyum ve denge.",
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
