import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FinalPage extends StatelessWidget {
  const FinalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: IconButton(
            onPressed: () => Get.toNamed("/majorarcana"),
            icon: Icon(
              Icons.home,
              size: 30,
            )),
      ),
      body: const Center(
        child: Text("Welcome to Final Page"),
      ),
    );
  }
}
