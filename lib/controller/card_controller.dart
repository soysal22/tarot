import 'dart:developer';

import 'package:card_flick/models/card__model.dart';
import 'package:get/get.dart';

class CardController extends GetxController {
  List<CardModel>? saveSelectedCard = <CardModel>[].obs;

  Future<void> listAdd(CardModel cardModel) async {
    saveSelectedCard?.add(cardModel);
    log("list cardModel added");

    log("yeni eklenen card : ${cardModel.toJson()}");
    log("saveSelectedCard  length :  ${saveSelectedCard?.length}");
    log(saveSelectedCard.toString());
  }

  Future<void> listAllDelete() async {
    saveSelectedCard?.remove;
    log("list All  Deleted");
  }
}
