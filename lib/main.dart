import 'package:card_flick/views/finish.dart';
import 'package:flutter/material.dart';
import 'package:flame_audio/flame_audio.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  FlameAudio.bgm.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Chat(),
    );
  }
}