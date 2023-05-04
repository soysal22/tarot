// ignore_for_file: library_private_types_in_public_api, unnecessary_null_comparison, slash_for_doc_comments, must_be_immutable

import 'package:flutter/material.dart';
//import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:card_flick/controller/card_controller.dart';

class ChatFinal extends StatefulWidget {
  const ChatFinal({super.key});

  @override
  State<ChatFinal> createState() => _ChatFinalState();
}

class _ChatFinalState extends State<ChatFinal> {
  /** ListView.builder(
          padding: const EdgeInsets.all(15),
          itemCount: cardController.saveSelectedCard?.length,
          itemBuilder: (context, index) {
            var data = cardController.saveSelectedCard?[index];
            var dat = cardController.saveSelectedCard;
            return dat!.isEmpty || dat.length == null
                ? const Center(child: Text("data is empty "))
                : SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(-1, 0),
                      end: Offset.zero,
                    ).animate(_animation),
                    child: ListTile(
                      title: Image.asset(
                        // width: Get.width / 2,
                        height: Get.width / 1.2,
                        data?.imageUrl ?? "assets/images/back.png",
                        fit: BoxFit.contain,
                      ),
                      trailing: Text(
                        data?.title ?? "title",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ),
                  );
          },
        ) */

  var dat = cardController.saveSelectedCard;

  late final AnimationController _animationController;

  @override
  void initState() {
    // _animationController=AnimationController(vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      floatingActionButton: ElevatedButton(
          style: ElevatedButton.styleFrom(),
          onPressed: () async {
            await cardController.listAllDelete();
            Get.dialog(const Center(child: CircularProgressIndicator()));
            Future.delayed(const Duration(seconds: 1));
            Get.offAndToNamed("/majorarcana");
          },
          child: const Text("Yeni Kart Seçmek İçin Tıklayınız ")),
      body: ListView.builder(
        itemCount: dat?.length,
        itemBuilder: (BuildContext context, int index) {
          var data = cardController.saveSelectedCard?[index];
          return FadeTransition(
            opacity: Tween<double>(
              begin: 1,
              end: 0.5,
            ).animate(_animationController),
            child: Card(
              margin: const EdgeInsets.only(top: 10),
              elevation: 10,
              child: Card(
                child: ListTile(
                  title: Image.asset(
                    // width: Get.width / 2,
                    height: Get.width / 1.2,
                    data?.imageUrl ?? "assets/images/back.png",
                    fit: BoxFit.contain,
                  ),
                  trailing: Text(
                    data?.cardName ?? "title",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      title: const Text("Selected Cards"),
      centerTitle: true,
      backgroundColor: Colors.blueGrey[900],
      leading: IconButton(
        iconSize: 30,
        onPressed: () {
          cardController.listAllDelete();
          Get.offAndToNamed("/majorarcana");
        },
        icon: const Icon(Icons.home),
      ),
    );
  }
}

final CardController cardController = Get.find();
