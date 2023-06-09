// ignore_for_file: library_private_types_in_public_api, depend_on_referenced_packages, unrelated_type_equality_checks

import 'package:card_flick/models/card__model.dart';
import 'package:card_flick/widgets/customFlipCard.dart';
import 'package:card_flick/widgets/float_Action_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Majorarcana extends StatefulWidget {
  const Majorarcana({Key? key}) : super(key: key);

  @override
  _MajorarcanaState createState() => _MajorarcanaState();
}

List<CardModel> majorarcanaImagesList = [
  CardModel(
    imageUrl: 'assets/images/majorarcana/theworld.jpg',
    cardName: "The World - Dünya",
    title: "Tamamlanma, bütünlük, evrensel anlayış.",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/death.jpg',
    cardName: "Death - Ölüm ",
    title: "Dönüşüm, sonlanma, yeniden doğuş",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/hangedman.jpg',
    cardName: "Hangedman - Asıl Adam",
    title: "Kurban, kabul, sükunet.",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/judgement.jpg',
    cardName: "Judgement - Yargı",
    title: "Yeniden doğuş, keşif, kurtuluş.",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/justice.jpg',
    cardName: "Justice - Adalet ",
    title: "Denge, dürüstlük, hak , adalet",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/strength.jpg',
    cardName: "Strength - Güç ",
    title: "Cesaret, dayanıklılık, güç",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/temperance.jpg',
    cardName: "Temperance - ölçülülük",
    title: "Dengeli yaşam, ılımlılık, uyum.",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thechariot.jpg',
    cardName: "The Chariot - Araba ",
    title: "Başarı, irade gücü, irade",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thedevil.jpg',
    cardName: "The Devil - Şeytan ",
    title: "Aşkınlaşma, kötülük, arzular.",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/theemperor.jpg',
    cardName: "The Emperor - İmparator ",
    title: "Otorite, güç, liderlik",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/theempress.jpg',
    cardName: "The Empress  - İmparatoriçe ",
    title: "Bereket, şefkat, güzellik",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thefool.jpg',
    cardName: "The Fool - Çılgın",
    title: "Yeni başlangıçlar, özgürlük, macera",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thehermit.jpg',
    cardName: "The Hermit - Seyyid",
    title: "Yalnızlık, arayış, öğretmen.",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thehierophant.jpg',
    cardName: "The Hierophant - Papaz ",
    title: " Gelenekler, inançlar, öğretmenlik",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thehighpriest.jpg',
    cardName: "The High Priestess  - Yüksek Rahibe ",
    title: "Gizem, içgüdü, bilgelik. ",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thelovers.jpg',
    cardName: "The Lovers - Aşıklar ",
    title: "Aşk, uyum, sevgi, bağlılık",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/themagician.jpg',
    cardName: "The Magician - Sihirbaz",
    title: "Yaratıcılık, beceri, güç , dönüşüm.",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/themoon.jpg',
    cardName: "The Moon - Ay",
    title: "İhtiras, hayal gücü, bilinçaltı",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thestar.jpg',
    cardName: "The Star - Yıldız ",
    title: " Umutlu olmak, ilham almak.",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thesun.jpg',
    cardName: "The Sun - Güneş ",
    title: "Mutluluk, başarı, aydınlanma.",
  ),
  CardModel(
    imageUrl: 'assets/images/majorarcana/thetower.jpg',
    cardName: "The Tower - Kule ",
    title: "Yıkım, felaket , değişimlerin zorluğu.",
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
