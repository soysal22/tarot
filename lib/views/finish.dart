// ignore_for_file: library_private_types_in_public_api, depend_on_referenced_packages, unrelated_type_equality_checks

import 'package:card_flick/models/card__model.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class Finished extends StatefulWidget {
  const Finished({Key? key}) : super(key: key);

  @override
  _FinishedState createState() => _FinishedState();
}

List<CardModel> majorarcanaImagesList = [
  CardModel(
    imageUrl: 'assets/images/majorarcana/death.jpg',
    cardName: "death",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/hangedman.jpg',
    cardName: "hangedman",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/judgement.jpg',
    cardName: "judgement",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/justice.jpg',
    cardName: "justice",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/strength.jpg',
    cardName: "strength",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/temperance.jpg',
    cardName: "temperance",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thechariot.jpg',
    cardName: "thechariot",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thedevil.jpg',
    cardName: "thedevil",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/theemperor.jpg',
    cardName: "theemperor",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/theempress.jpg',
    cardName: "theempress",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thefool.jpg',
    cardName: "thefool",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thehermit.jpg',
    cardName: "thehermit",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thehierophant.jpg',
    cardName: "thehierophant",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thehighpriest.jpg',
    cardName: "thehighpriest",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thelovers.jpg',
    cardName: "thelovers",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/themagician.jpg',
    cardName: "themagician",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/themoon.jpg',
    cardName: "themoon",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thestar.jpg',
    cardName: "thestar",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thesun.jpg',
    cardName: "thesun",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thetower.jpg',
    cardName: "thetower",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/theworld.jpg',
    cardName: "theworld",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/wheloffortune.jpg',
    cardName: "wheloffortune",
  ),
];

class _FinishedState extends State<Finished> {
  @override
  void initState() {
    majorarcanaImagesList.shuffle();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _floatButton(context),
      backgroundColor: const Color.fromARGB(255, 159, 56, 1),
      body: SafeArea(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: majorarcanaImagesList.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 50,
                height: 80,
                child: FlipCard(
                  onFlipDone: (isFront) {
                    if (isFront) {
                      _customShowDialog(context, index);
                      Future.delayed(const Duration(seconds: 1))
                          .then((value) => Navigator.pop(context));
                    }
                  },
                  fill: Fill.fillBack,
                  front: _closeImage(),
                  back: comeToImage(index),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Future<dynamic> _customShowDialog(BuildContext context, int index) {
    return showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(majorarcanaImagesList[index].cardName ?? "title",
              textAlign: TextAlign.center),
          content: CircleAvatar(
            child: Center(
              child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                    Icons.close,
                    size: 30,
                  )),
            ),
          ),
        );
      },
    );
  }

  Container comeToImage(int index) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 49, 0, 58),
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(majorarcanaImagesList[index].imageUrl!),
        ),
      ),
    );
  }

  Container _closeImage() {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 49, 0, 58),
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: AssetImage('assets/images/back.png'),
        ),
      ),
    );
  }

  FloatingActionButton _floatButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) =>
              const Center(child: CircularProgressIndicator()),
        );
        Future.delayed(const Duration(seconds: 2)).then((value) =>
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Finished())));
      },
      child: const Icon(Icons.refresh),
    );
  }
}
