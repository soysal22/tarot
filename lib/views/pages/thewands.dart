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

//Asalar (Wands), hayalleri, yaratıcılığı, tutkuyu ve motivasyonu
//simgeleyen bir tarot kartı kategorisidir. ,
//Bu kartlar, genellikle bir kişinin yaşamındaki fikirler,
//projeler ve yaratıcılıkla ilgili konulara işaret ederler.

List<CardModel> thewandsImagesList = [
  CardModel(
      imageUrl: 'assets/images/thewands/aceofwands.jpg',
      cardName: "Ace Of Wands",
      title:
          "Yeni bir fikir, yaratıcılık, potansiyel ve heyecan verici bir başlangıç."),
  CardModel(
      imageUrl: 'assets/images/thewands/eightofwands.jpg',
      cardName: "Eight Of Wands",
      title: "Hızlı ilerleme süreci ve fırsatların değerlendirilmesi."),
  CardModel(
    imageUrl: 'assets/images/thewands/fiveofwands.jpg',
    cardName: "Five Of Wands",
    title: "Rekabet, zorluklar, engeller veya çatışma.",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/fourofwands.jpg',
    cardName: "Four Of Wands",
    title: "Kutlama, başarı, mutluluk veya toplumsal onay.",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/kingofwands.jpg',
    cardName: "King Of Wands",
    title: "Güçlü liderlik, vizyon, yaratıcılık veya bir erkek lider.",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/knightofwands.jpg',
    cardName: "Knight Of Wands",
    title: "Hareket, tutku, cesaret veya bir gezgin.",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/nineofwands.jpg',
    cardName: "Nine Of Wands",
    title: "Direnç, dayanıklılık, mücadele veya savunma.",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/pageofwands.jpg',
    cardName: "Page Of Wands",
    title: "Yaratıcılık, genç bir adam, haber veya fikirlerin ilhamı.",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/queenofwands.jpg',
    cardName: "Queen Of Wands",
    title: "Güçlü liderlik, tutku, enerji veya bir kadın lider.",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/sevenofwands.jpg',
    cardName: "Seven Of Wands",
    title:
        "Kendini savunma, zorluklara meydan okuma veya rekabetçi bir ruh hali.",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/sixofwands.jpg',
    cardName: "Six Of Wands",
    title: "Zafer, ödül, başarı veya tanınma.",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/tenofwands.jpg',
    cardName: "Ten Of Wands",
    title: "Ağır yük, stres, baskı veya sorumluluklar.",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/threeofwands.jpg',
    cardName: "Three Of Wands",
    title: "İlerleme, büyüme, başarı veya seyahat.",
  ),
  CardModel(
    imageUrl: 'assets/images/thewands/twoofwands.jpg',
    cardName: "Two Of Wands",
    title:
        "Geleceğe yönelik planlama, vizyon, uzun vadeli hedefler veya karar verme.",
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
        nextroute: "/finalPage",
      ),
    );
  }
}
