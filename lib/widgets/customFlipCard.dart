// ignore_for_file: file_names, depend_on_referenced_packages

import 'package:card_flick/models/card__model.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class CustomFlipCard extends StatelessWidget {
  final List<CardModel> comeToList;
  final Function() nextPage;

  const CustomFlipCard(
      {super.key, required this.comeToList, required this.nextPage});

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: comeToList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              // width: 50,
              // height: 80,
              child: FlipCard(
                onFlipDone: (isFront) {
                  if (isFront) {
                    _customShowDialog(context, index);
                    Future.delayed(const Duration(seconds: 1))
                        .then((value) => nextPage);
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
    );
  }

  Future<dynamic> _customShowDialog(BuildContext context, int index) {
    return showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(comeToList[index].title ?? "title",
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
          image: AssetImage(comeToList[index].imageUrl!),
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
}
