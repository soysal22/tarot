// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomFloatActionButton extends StatelessWidget {
  final Function() routePage;
  const CustomFloatActionButton({super.key, required this.routePage});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) =>
              const Center(child: CircularProgressIndicator()),
        );
        Future.delayed(const Duration(seconds: 2)).then((value) => routePage);
      },
      child: const Icon(Icons.refresh),
    );
  }
}
