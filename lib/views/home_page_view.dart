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
      imageUrl: 'assets/images/majorarcana/aceofcups.jpg',
      title: "aceofcups",
    ),
    CardModel(
      imageUrl: 'assets/images/majorarcana/eightofcups.jpg',
      title: "eightofcups",
    ),
    CardModel(
      imageUrl: 'assets/images/majorarcana/fiveofcups.jpg',
      title: "fiveofcups",
    ),
    CardModel(
      imageUrl: 'assets/images/majorarcana/fourofcups.jpg',
      title: "fourofcups",
    ),
    CardModel(
      imageUrl: 'assets/images/majorarcana/kingofcups.jpg',
      title: "kingofcups",
    ),
    CardModel(
      imageUrl: 'assets/images/majorarcana/knightofcups.jpg',
      title: "knightofcups",
    ),
    CardModel(
      imageUrl: 'assets/images/majorarcana/nineofcups.jpg',
      title: "nineofcups",
    ),
    CardModel(
      imageUrl: 'assets/images/majorarcana/pageofcups.jpg',
      title: "pageofcups",
    ),
    CardModel(
      imageUrl: 'assets/images/majorarcana/queenofcups.jpg',
      title: "queenofcups",
    ),
    CardModel(
      imageUrl: 'assets/images/majorarcana/sevenofcups.jpg',
      title: "sevenofcups",
    ),
    CardModel(
      imageUrl: 'assets/images/majorarcana/sixofcups.jpg',
      title: "sixofcups",
    ),
    CardModel(
      imageUrl: 'assets/images/majorarcana/tenofcups.jpg',
      title: "tenofcups",
    ),
    CardModel(
      imageUrl: 'assets/images/majorarcana/threeofcups.jpg',
      title: "thehierophant",
    ),
    CardModel(
      imageUrl: 'assets/images/majorarcana/twoofcups.jpg',
      title: "twoofcups",
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
