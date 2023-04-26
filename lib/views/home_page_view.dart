// import 'dart:math';

// import 'package:card_flick/models/card__model.dart';
// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   bool isBack = true;
//   double angle = 0;

//   // List<String> images = [
//   //   'assets/images/majorarcana/death.jpg',
//   //   'assets/images/majorarcana/hangedman.jpg',
//   //   'assets/images/majorarcana/judgement.jpg',
//   //   'assets/images/majorarcana/justice.jpg',
//   //   'assets/images/majorarcana/strength.jpg',
//   //   'assets/images/majorarcana/temperance.jpg',
//   //   'assets/images/majorarcana/thechariot.jpg',
//   //   'assets/images/majorarcana/thedevil.jpg',
//   //   'assets/images/majorarcana/theemperor.jpg',
//   //   'assets/images/majorarcana/theempress.jpg',
//   //   'assets/images/majorarcana/thefool.jpg',
//   //   'assets/images/majorarcana/thehermit.jpg',
//   //   'assets/images/majorarcana/thehierophant.jpg',
//   //   'assets/images/majorarcana/thehighpriest.jpg',
//   //   'assets/images/majorarcana/thelovers.jpg',
//   //   'assets/images/majorarcana/themagician.jpg',
//   //   'assets/images/majorarcana/themoon.jpg',
//   //   'assets/images/majorarcana/thestar.jpg',
//   //   'assets/images/majorarcana/thesun.jpg',
//   //   'assets/images/majorarcana/thetower.jpg',
//   //   'assets/images/majorarcana/theworld.jpg',
//   //   'assets/images/majorarcana/wheloffortune.jpg',
//   // ];

//   List<CardModel> cardImage = [
//     CardModel(id: 0, imageUrl: 'assets/images/majorarcana/death.jpg', isBack: false),
//     CardModel(id: 1, imageUrl: 'assets/images/majorarcana/hangedman.jpg', isBack: false),
//     CardModel(id: 2, imageUrl: 'assets/images/majorarcana/judgement.jpg', isBack: false),
//     CardModel(id: 3, imageUrl: 'assets/images/majorarcana/justice.jpg', isBack: false),
//     CardModel(id: 4, imageUrl: 'assets/images/majorarcana/strength.jpg', isBack: false),
//     CardModel(id: 5, imageUrl: 'assets/images/majorarcana/temperance.jpg', isBack: false),
//     CardModel(id: 6, imageUrl: 'assets/images/majorarcana/thechariot.jpg', isBack: false),
//     CardModel(id: 7, imageUrl: 'assets/images/majorarcana/thedevil.jpg', isBack: false),
//     CardModel(id: 8, imageUrl: 'assets/images/majorarcana/theemperor.jpg', isBack: false),
//     CardModel(id: 9, imageUrl: 'assets/images/majorarcana/theempress.jpg', isBack: false),
//     CardModel(id: 10, imageUrl: 'assets/images/majorarcana/thefool.jpg', isBack: false),
//     CardModel(id: 11, imageUrl: 'assets/images/majorarcana/thehermit.jpg', isBack: false),
//     CardModel(id: 12, imageUrl: 'assets/images/majorarcana/thehierophant.jpg'),
//     CardModel(id: 13, imageUrl: 'assets/images/majorarcana/thehighpriest.jpg'),
//     CardModel(id: 14, imageUrl: 'assets/images/majorarcana/thelovers.jpg'),
//     CardModel(id: 15, imageUrl: 'assets/images/majorarcana/themagician.jpg'),
//     CardModel(id: 16, imageUrl: 'assets/images/majorarcana/themoon.jpg'),
//     CardModel(id: 17, imageUrl: 'assets/images/majorarcana/thestar.jpg'),
//     CardModel(id: 18, imageUrl: 'assets/images/majorarcana/thesun.jpg'),
//     CardModel(id: 19, imageUrl: 'assets/images/majorarcana/thetower.jpg'),
//     CardModel(id: 20, imageUrl: 'assets/images/majorarcana/theworld.jpg'),
//     CardModel(id: 21, imageUrl: 'assets/images/majorarcana/wheloffortune.jpg'),
//   ];

//   void _flip(int index) {
//     setState(() {
//       if (index == cardImage[index].id) {
//         angle = (angle + pi) % (2 * pi);
//       }
//     });
//   }

//   @override
//   void initState() {
//     cardImage.shuffle();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.push(context,
//               MaterialPageRoute(builder: (context) => const HomePage()));
//         },
//         child: const Icon(Icons.add),
//       ),
//       backgroundColor: const Color.fromARGB(255, 159, 56, 1),
//       body: Scrollbar(
//         child: SafeArea(
//           child: GridView.builder(
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//             ),
//             itemCount: cardImage.length,
//             itemBuilder: (BuildContext context, int index) {
//               return GestureDetector(
//                 onTap: () {
//                   _flip(index);
//                 },
//                 child: TweenAnimationBuilder(
//                     tween: Tween<double>(begin: angle, end: angle),
//                     duration: const Duration(seconds: 1),
//                     builder: (BuildContext context, double val, __) {
//                       if (val > (pi / 2)) {
//                         isBack = false;
//                       } else {
//                         isBack = true;
//                       }
//                       return (Transform(
//                           alignment: Alignment.center,
//                           transform: Matrix4.identity()
//                             ..setEntry(3, 2, 0.0001)
//                             ..rotateY(val),
//                           child: Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: SizedBox(
//                                 width: 50,
//                                 height: 80,
//                                 child: isBack
//                                     ? Container(
//                                         decoration: BoxDecoration(
//                                             color: const Color.fromARGB(
//                                                 255, 49, 0, 58),
//                                             borderRadius:
//                                                 BorderRadius.circular(10),
//                                             image: const DecorationImage(
//                                                 image: AssetImage(
//                                                     'assets/images/back.png'))),
//                                       )
//                                     : Container(
//                                         decoration: BoxDecoration(
//                                             color: const Color.fromARGB(
//                                                 255, 49, 0, 58),
//                                             borderRadius:
//                                                 BorderRadius.circular(10),
//                                             image: DecorationImage(
//                                                 fit: BoxFit.fill,
//                                                 image: AssetImage(
//                                                     cardImage[index]
//                                                         .imageUrl
//                                                         .toString()))),
//                                       ),
//                               ))));
//                     }),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
