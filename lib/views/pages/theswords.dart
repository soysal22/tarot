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
    title: "Zihin açıklığı, yenilik, keskin düşünceler ve yeni fikirler.",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/eightofswords.jpg',
    cardName: "Eight Of Swords",
    title: "Kısıtlama, korku, endişe veya engellenme.",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/fiveofswords.jpg',
    cardName: "Five Of Swords",
    title: "Yıkım, kayıp, yenilgi, yağmalama veya hırsızlık.",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/fourofwords.jpg',
    cardName: "Four Of Words",
    title: "Dinlenme, huzur, yenilenme veya kendi kendine bakım.",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/kingofswords.jpg',
    cardName: "King Of Swords",
    title: "Otorite, liderlik, adalet veya bir erkek lider.",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/knightofswords.jpg',
    cardName: "Knight Of Swords",
    title: "Güçlü iletişim, hızlı düşünme, cesaret veya bir savaşçı.",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/nineofswords.jpg',
    cardName: "Nine Of Swords",
    title: "Korkular, endişeler, kabuslar veya bunalım.",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/pageofswords.jpg',
    cardName: "Page Of Swords",
    title: "Analitik düşünce, zekâ, açık sözlülük veya genç bir adam.",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/queenofswords.jpg',
    cardName: "queen Of Swords",
    title: "Keskin zekâ, bağımsızlık, kesinlik veya bir kadın lider.",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/sevenofswords.jpg',
    cardName: "seven Of Swords",
    title: "İhanet, hırsızlık, manipülasyon veya kaçış.",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/sixofswords.jpg',
    cardName: "Six Of Swords",
    title: "Geçiş, ilerleme, iyileşme veya fiziksel hareket.",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/tenswords.jpg',
    cardName: "Ten Of Swords",
    title: "Bitiş, son, yenilgi veya kayıp.",
  ),
  CardModel(
    imageUrl: 'assets/images/theswords/threeofswords.jpg',
    cardName: "Three Of Swords",
    title: "Kalp kırıklığı, acı, yas veya kayıp.",
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
