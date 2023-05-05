// ignore_for_file: unused_import

import 'package:card_flick/controller/card_controller.dart';
import 'package:card_flick/routes/routes.dart';
import 'package:card_flick/views/deneme/animas.dart';
import 'package:card_flick/views/deneme/list_deneme.dart';
import 'package:card_flick/views/deneme/screenshot.dart';
import 'package:card_flick/views/final_page.dart';
import 'package:card_flick/views/home_page_view.dart';
import 'package:card_flick/views/pages/majorarcana.dart';
import 'package:card_flick/views/pages/thecups.dart';
import 'package:card_flick/views/pages/thepentacles.dart';
import 'package:card_flick/views/pages/theswords.dart';
import 'package:card_flick/views/pages/thewands.dart';
import 'package:flutter/material.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  FlameAudio.bgm.initialize();

  Get.put(CardController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: Routes().getList,
      title: 'Flutter Tarot Demo ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      initialRoute: "/majorarcana",
      //home: Animas(),
    );
  }
}
