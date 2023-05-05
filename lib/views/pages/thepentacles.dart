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
    imageUrl: 'assets/images/thepentacles/aceofpentacles.jpg',
    cardName: "Ace Of Pentacles",
    title: "Yeni bir finansal fırsat, para veya zenginlik.",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/eightofpentacles.jpg',
    cardName: "Eight Of Pentacles",
    title: "Uzmanlık, çalışkanlık, disiplin veya el becerileri.",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/fiveofpentacles.jpg',
    cardName: "five Of Pentacles",
    title: "Maddi kayıp, zorluklar, sıkıntı veya yoksulluk.",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/fourofpentacles.jpg',
    cardName: "Four Of Pentacles",
    title: "Kontrol, bağlılık, aşırı koruma veya maddi güvensizlik.",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/kingofpentacles.jpg',
    cardName: "King Of Pentacles",
    title: "Refah, güvenilirlik, liderlik veya bir erkek lider.",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/knightofpentacles.jpg',
    cardName: "Knight Of Pentacles",
    title: "Güvenilirlik, sorumluluk, sabır veya bir seyahatçi.",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/nineofpentacles.jpg',
    cardName: "Nine of Pentacles",
    title: "Lüks, rahatlık, maddi güvenlik veya bağımsızlık.",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/pageofpentacles.jpg',
    cardName: "Page of Pentacles",
    title: "Dürüstlük, çalışkanlık, yeni bir fikir veya genç bir adam.",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/queenofpentacles.jpg',
    cardName: "Queen of Pentacles",
    title: "Cömertlik, pratiklik, güvenilirlik veya bir kadın lider.",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/sevenofpentacles.jpg',
    cardName: "Seven Of Pentacles",
    title: "Sabır, emek, yatırımın meyvelerinin toplanması veya bekleyiş.",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/sixofpentacles.jpg',
    cardName: "Six Of Pentacles",
    title: "Cömertlik, paylaşım, karşılıklı yardım veya adil olma.",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/tenofpentacles.jpg',
    cardName: "Ten Of Pentacles",
    title: "Zenginlik, refah, miras veya aile bağları.",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/threeofpentacles.jpg',
    cardName: "Three Of Pentacles",
    title: "İşbirliği, ekip çalışması, becerilerin övgüsü veya başarı.",
  ),
  CardModel(
    imageUrl: 'assets/images/thepentacles/twoofpentacles.jpg',
    cardName: "Two Of Pentacles",
    title: "Dengede kalmaya çalışmak, esneklik veya uyum.",
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
