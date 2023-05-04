import 'package:card_flick/views/final_chat.dart';
import 'package:card_flick/views/final_page.dart';
import 'package:card_flick/views/pages/majorarcana.dart';
import 'package:card_flick/views/pages/thecups.dart';
import 'package:card_flick/views/pages/thepentacles.dart';
import 'package:card_flick/views/pages/theswords.dart';
import 'package:card_flick/views/pages/thewands.dart';
import 'package:get/get.dart';

class Routes {
  List<GetPage<dynamic>>? getList = [
    GetPage(name: "/majorarcana", page: () => const Majorarcana()),
    GetPage(name: "/thecups", page: () => const Thecups()),
    GetPage(name: "/thepentacles", page: () => const Thepentacles()),
    GetPage(name: "/theswords", page: () => const Theswords()),
    GetPage(name: "/thewands", page: () => const Thewands()),
    GetPage(name: "/finalPage", page: () => FinalPage()),
    GetPage(name: "/chatFinal", page: () => const ChatFinal()),
  ];
}
