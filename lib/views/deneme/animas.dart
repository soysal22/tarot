import 'package:flutter/material.dart';

class Animas extends StatefulWidget {
  @override
  _AnimasState createState() => _AnimasState();
}

class _AnimasState extends State<Animas> with SingleTickerProviderStateMixin {
  List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10'
  ];

  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return AnimatedContainer(
                    duration: Duration(seconds: 5),
                    curve: Curves.easeIn,
                    child: Card(
                      child: ListTile(
                        title: Text(items[index]),
                      ),
                    ),
                  );
                })));
  }
}