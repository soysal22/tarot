// ignore_for_file: library_private_types_in_public_api, depend_on_referenced_packages, unrelated_type_equality_checks

import 'package:card_flick/models/card__model.dart';
import 'package:card_flick/widgets/customFlipCard.dart';
import 'package:card_flick/widgets/float_Action_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:screenshot/screenshot.dart';

class Majorarcana extends StatefulWidget {
  const Majorarcana({Key? key}) : super(key: key);

  @override
  _MajorarcanaState createState() => _MajorarcanaState();
}

List<CardModel> majorarcanaImagesList = [
  CardModel(
    imageUrl: 'assets/images/majorarcana/death.jpg',
    cardName: "death - Ölüm ",
    title: "Dönüşüm, sonlanma, yeniden doğuş",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/hangedman.jpg',
    cardName: "hangedman - Asıl Adam",
    title: "Sabır, farkındalık, yeniden doğuş",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/judgement.jpg',
    cardName: "judgement - Yargı",
    title: "Yenilenme ve yeniden doğuş",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/justice.jpg',
    cardName: "justice - Adalet ",
    title: "Denge, dürüstlük, yargı",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/strength.jpg',
    cardName: "strength - Güç ",
    title: "Cesaret, dayanıklılık, tutku",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/temperance.jpg',
    cardName: "temperance - ölçülülük",
    title: "Dengeli olmak, uyumlu olmak",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thechariot.jpg',
    cardName: "thechariot - Araba ",
    title: "Başarı, irade gücü, kontrol",
  ),
  CardModel(
      imageUrl: 'assets/images/majorarcana/thedevil.jpg',
      cardName: "thedevil - Şeytan ",
      title: "Bağımlılık, korku, kötülük"),
  CardModel(
    imageUrl: 'assets/images/majorarcana/theemperor.jpg',
    cardName: "theemperor - İmparator ",
    title: "Otorite, güç, liderlik",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/theempress.jpg',
    cardName: "theempress  - İmparatoriçe ",
    title: "Bereket, şefkat, güzellik",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thefool.jpg',
    cardName: "thefool - Çılgın",
    title: " Yeni başlangıçlar, özgürlük, macera",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thehermit.jpg',
    cardName: "thehermit - Seyyid",
    title: "İzolasyon, arayış, aydınlanma",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thehierophant.jpg',
    cardName: "thehierophant - Papaz ",
    title: " Gelenekler, inançlar, öğretmenlik",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thehighpriest.jpg',
    cardName: "thehighpriest - Yüksek Rahibe ",
    title: "Gizem, içgüdü, bilgelik. ",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thelovers.jpg',
    cardName: "The Lovers - Aşıklar ",
    title: "Aşk, uyum, seçim",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/themagician.jpg',
    cardName: "The Magician - Sihirbaz",
    title: "Yaratıcılık, beceri, güç.",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/themoon.jpg',
    cardName: "The Moon - Ay",
    title: "Hayal gücüne sahip olmak.",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thestar.jpg',
    cardName: "The Star - Yıldız ",
    title: " Umutlu olmak, ilham almak.",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thesun.jpg',
    cardName: "The Sun - Güneş ",
    title: " Mutluluk ve başarıya giden yolun açılması.",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thetower.jpg',
    cardName: "The Tower - Kule ",
    title: "Yıkım, değişimlerin zorluğu.",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/theworld.jpg',
    cardName: "The World - Dünya",
    title: "",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/wheloffortune.jpg',
    cardName: "Whel Of Fortune - Şans Çarkı",
    title: "Değişimler, dönüşümler, şans.",
  ),
];

class _MajorarcanaState extends State<Majorarcana> {
  @override
  void initState() {
    majorarcanaImagesList.shuffle();
    super.initState();
  }

  ScreenshotController screenshotController = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: Screenshot(
      //     controller: screenshotController,
      //     child: const Icon(Icons.camera_alt_outlined),
      //   ),
      // ),
      floatingActionButton: CustomFloatActionButton(
        routePage: () => Get.toNamed("/majorarcana"),
      ),
      backgroundColor: const Color.fromARGB(255, 159, 56, 1),
      body: CustomFlipCard(
        comeToList: majorarcanaImagesList,
        nextroute: "/thecups",
      ),
    );
  }
}
