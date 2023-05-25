// ignore_for_file: file_names, avoid_print, unused_element

import 'package:flutter/material.dart';

class CustomFloatActionButton extends StatefulWidget {
  final void Function() routePage;
  const CustomFloatActionButton({super.key, required this.routePage});

  @override
  State<CustomFloatActionButton> createState() =>
      _CustomFloatActionButtonState();
}

bool _isLoading = false;

class _CustomFloatActionButtonState extends State<CustomFloatActionButton> {
  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : ElevatedButton(
            onPressed: () {
              setState(() {
                _isLoading = true;
              });

              Future.delayed(const Duration(seconds: 1), () {
                setState(() {
                  _isLoading = false;
                });
                widget.routePage;
              });
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
            child: Wrap(
              // alignment: WrapAlignment.spaceBetween,
              // mainAxisSize: MainAxisSize.min,
              spacing: 10,
              children: const [
                Text("Kartları Karıştır", style: TextStyle(fontSize: 18)),
                //  SizedBox(width: 10),
                Icon(Icons.swap_vert, size: 30),
              ],
            ),
          );
  }
}
