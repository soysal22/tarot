// ignore_for_file: unused_import

import 'package:card_flick/views/deneme/screenshot.dart';
import 'package:card_flick/views/final_page.dart';
import 'package:card_flick/views/home.dart';
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
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: "/majorarcana", page: () => const Majorarcana()),
        GetPage(name: "/thecups", page: () => const Thecups()),
        GetPage(name: "/thepentacles", page: () => const Thepentacles()),
        GetPage(name: "/theswords", page: () => const Theswords()),
        GetPage(name: "/thewands", page: () => const Thewands()),
        GetPage(name: "/finalPage", page: () => const FinalPage()),
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      initialRoute: "/majorarcana",
      // home: const Majorarcana(),
    );
  }
}
