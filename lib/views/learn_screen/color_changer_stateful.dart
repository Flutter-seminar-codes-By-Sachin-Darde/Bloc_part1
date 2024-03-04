import 'dart:math';

import 'package:flutter/material.dart';

class ColorChangerStateful extends StatefulWidget {
  const ColorChangerStateful({super.key});

  @override
  State<ColorChangerStateful> createState() => _ColorChangerStatefulState();
}

class _ColorChangerStatefulState extends State<ColorChangerStateful> {
  List<Color> colors = [Colors.blue, Colors.black, Colors.red, Colors.pink];
  late Color selectedColor;
  @override
  void initState() {
    super.initState();
    selectedColor = colors[Random().nextInt(4)];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: Container(
            color: selectedColor,
          ),
        ),
        Expanded(
          child: Center(
              child: ElevatedButton(
            child: const Text("Change"),
            onPressed: () {
              setState(() {
                selectedColor = colors[Random().nextInt(4)];
              });
            },
          )),
        )
      ]),
    );
  }
}
