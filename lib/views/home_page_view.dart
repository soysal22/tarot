import 'dart:math';
import 'package:card_flick/models/card__model.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  bool isBack = true;
  double angle = 0;
  //ScrollController _scrollController = ScrollController();

  List<CardModel> cardImage = [
    CardModel(
      id: 0,
      imageUrl: 'assets/images/majorarcana/death.jpg',
      title: "death",
      angle: 0,
    ),
    CardModel(
      id: 1,
      imageUrl: 'assets/images/majorarcana/hangedman.jpg',
      title: "hangedman",
      angle: 0,
    ),
    CardModel(
      id: 2,
      imageUrl: 'assets/images/majorarcana/judgement.jpg',
      title: "judgement",
      angle: 0,
    ),
    CardModel(
      id: 3,
      imageUrl: 'assets/images/majorarcana/justice.jpg',
      title: "justice",
      angle: 0,
    ),
    CardModel(
      id: 4,
      imageUrl: 'assets/images/majorarcana/strength.jpg',
      title: "strength",
      angle: 0,
    ),
    CardModel(
      id: 5,
      imageUrl: 'assets/images/majorarcana/temperance.jpg',
      title: "temperance",
      angle: 0,
    ),
    CardModel(
      id: 6,
      imageUrl: 'assets/images/majorarcana/thechariot.jpg',
      title: "thechariot",
      angle: 0,
    ),
    CardModel(
      id: 7,
      imageUrl: 'assets/images/majorarcana/thedevil.jpg',
      title: "thedevil",
      angle: 0,
    ),
    CardModel(
      id: 8,
      imageUrl: 'assets/images/majorarcana/theemperor.jpg',
      title: "theemperor",
      angle: 0,
    ),
    CardModel(
      id: 9,
      imageUrl: 'assets/images/majorarcana/theempress.jpg',
      title: "theempress",
      angle: 0,
    ),
    CardModel(
      id: 10,
      imageUrl: 'assets/images/majorarcana/thefool.jpg',
      title: "thefool",
      angle: 0,
    ),
    CardModel(
      id: 11,
      imageUrl: 'assets/images/majorarcana/thehermit.jpg',
      title: "thehermit",
      angle: 0,
    ),
    CardModel(
      id: 12,
      imageUrl: 'assets/images/majorarcana/thehierophant.jpg',
      title: "thehierophant",
      angle: 0,
    ),
    CardModel(
      id: 13,
      imageUrl: 'assets/images/majorarcana/thehighpriest.jpg',
      title: "thehighpriest",
      angle: 0,
    ),
    CardModel(
      id: 14,
      imageUrl: 'assets/images/majorarcana/thelovers.jpg',
      title: "thelovers",
      angle: 0,
    ),
    CardModel(
      id: 15,
      imageUrl: 'assets/images/majorarcana/themagician.jpg',
      title: "themagician",
      angle: 0,
    ),
    CardModel(
      id: 16,
      imageUrl: 'assets/images/majorarcana/themoon.jpg',
      title: "themoon",
      angle: 0,
    ),
    CardModel(
      id: 17,
      imageUrl: 'assets/images/majorarcana/thestar.jpg',
      title: "thestar",
      angle: 0,
    ),
    CardModel(
      id: 18,
      imageUrl: 'assets/images/majorarcana/thesun.jpg',
      title: "thesun",
      angle: 0,
    ),
    CardModel(
      id: 19,
      imageUrl: 'assets/images/majorarcana/thetower.jpg',
      title: "thetower",
      angle: 0,
    ),
    CardModel(
      id: 20,
      imageUrl: 'assets/images/majorarcana/theworld.jpg',
      title: "theworld",
      angle: 0,
    ),
    CardModel(
      id: 21,
      imageUrl: 'assets/images/majorarcana/wheloffortune.jpg',
      title: "wheloffortune",
      angle: 0,
    ),
  ];

  void _flip(int index) {
    setState(() {
      //  cardImage[index].isBack = !cardImage[index].isBack!;
      cardImage[index].angle = (cardImage[index].angle! + pi) % (2 * pi);
    });
  }

  @override
  void initState() {
    cardImage.shuffle();
    super.initState();
  }

  // @override
  // void dispose() {
  //   _scrollController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomePageView()));
        },
        child: const Icon(Icons.add),
      ),
      backgroundColor: const Color.fromARGB(255, 159, 56, 1),
      body: SafeArea(
        child: GridView.builder(
          //  controller: _scrollController,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: cardImage.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                _flip(index);
                _customShowDialog(context, index);
              },
              child: TweenAnimationBuilder(
                  tween: Tween<double>(
                      begin: cardImage[index].angle!,
                      end: cardImage[index].angle!),
                  duration: const Duration(seconds: 1),
                  builder: (BuildContext context, double val, __) {
                    if (val > (pi / 2)) {
                      isBack = false;
                    } else {
                      isBack = true;
                    }

                    return (Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.identity()
                          ..setEntry(3, 2, 0.0001)
                          ..rotateY(val),
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: isBack
                                ? _bacgroundImage()
                                : _comeToImage(index))));
                  }),
            );
          },
        ),
      ),
    );
  }

  Container _bacgroundImage() {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 49, 0, 58),
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
              image: AssetImage('assets/images/back.png'))),
    );
  }

  Container _comeToImage(int index) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 49, 0, 58),
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage(cardImage[index].imageUrl!))),
    );
  }

  Future<dynamic> _customShowDialog(BuildContext context, int index) {
    return showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(cardImage[index].title ?? "title",
              textAlign: TextAlign.center),
          content: CircleAvatar(
            child: Center(
              child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
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
}
