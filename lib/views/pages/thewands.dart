// ignore_for_file: library_private_types_in_public_api, depend_on_referenced_packages, unrelated_type_equality_checks

import 'package:card_flick/models/card__model.dart';
import 'package:card_flick/widgets/customFlipCard.dart';
import 'package:card_flick/widgets/float_Action_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Thewands extends StatefulWidget {
  const Thewands({Key? key}) : super(key: key);

  @override
  _ThewandsState createState() => _ThewandsState();
}

List<CardModel> thewandsImagesList = [
  CardModel(
      imageUrl: 'assets/images/thewands/aceofwands.jpg',
      cardName: "Ace Of Wands",
      title: "Yeni başlangıçlar ve yaratıcılık"),
  CardModel(
      imageUrl: 'assets/images/thewands/eightofwands.jpg',
      cardName: "Eight Of Wands",
      title: "Hızlı ilerleme süreci ve fırsatların değerlendirilmesi."),
  CardModel(
    imageUrl: 'assets/images/thewands/fiveofwands.jpg',
    cardName: "Five Of Wands",
    title: "Rekabet ve mücadele süreci.",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/fourofwands.jpg',
    cardName: "Four Of Wands",
    title: " Kutlama ve mutluluk süreci.",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/kingofwands.jpg',
    cardName: "King Of Wands",
    title: "Güçlü bir liderlik hissi ve hedeflerine ulaşma sürecinde olmak.",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/knightofwands.jpg',
    cardName: "Knight Of Wands",
    title: "Hareketlilik ve enerji dolu bir süreçte olmak.",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/nineofwands.jpg',
    cardName: "Nine Of Wands",
    title: "Dayanıklılık ve mücadele süreci.",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/pageofwands.jpg',
    cardName: "Page Of Wands",
    title: "Yaratıcılık ve keşfetme süreci.",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/queenofwands.jpg',
    cardName: "Queen Of Wands",
    title: "Güçlü bir liderlik hissi ve yaratıcılık sürecinde olmak.",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/sevenofwands.jpg',
    cardName: "Seven Of Wands",
    title: "Kendini savunma süreci ve mücadele etme hissi.",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/sixofwands.jpg',
    cardName: "Six Of Wands",
    title: "Başarıya ulaşma süreci ve ödüllendirilme hissi.",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/tenofwands.jpg',
    cardName: "Ten Of Wands",
    title: "Sorumlulukların üstesinden gelme süreci ve yük taşıma hissi.",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/threeofwands.jpg',
    cardName: "Three Of Wands",
    title: "Başarıya giden yolda ilerleme ve büyüme süreci.",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/twoofwands.jpg',
    cardName: "Two Of Wands",
    title: "Geleceğe yönelik planlama ve karar verme süreci.",
  ),
];

class _ThewandsState extends State<Thewands> {
  @override
  void initState() {
    thewandsImagesList.shuffle();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          CustomFloatActionButton(routePage: () => Get.toNamed("/thewands")),
      backgroundColor: const Color.fromARGB(255, 159, 56, 1),
      body: CustomFlipCard(
        comeToList: thewandsImagesList,
        nextroute: "/chatFinal",
      ),
    );
  }
}
