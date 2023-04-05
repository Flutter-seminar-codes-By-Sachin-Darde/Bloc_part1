import 'package:flutter/material.dart';

class BasicStatefulScreen extends StatefulWidget {
  const BasicStatefulScreen({super.key});

  @override
  State<BasicStatefulScreen> createState() => _BasicStatefulScreenState();
}

class _BasicStatefulScreenState extends State<BasicStatefulScreen> {
  String text = 'Click following button to change';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
              child: Center(
            child: Text(
              text,
              style: const TextStyle(fontSize: 25),
            ),
          )),
          Expanded(
              child: Column(
            children: [
              ElevatedButton(
                child: const Text('Make it Hello'),
                onPressed: () {
                  setState(() {
                    text = 'Hello';
                  });
                },
              ),
              ElevatedButton(
                child: const Text('Make it You\'re welcome'),
                onPressed: () {
                  setState(() {
                    text = 'You\'re welcome';
                  });
                },
              ),
              ElevatedButton(
                child:
                    const Text('Make it Let\'s see how to make it with bloc'),
                onPressed: () {
                  setState(() {
                    text = 'Let\'s see how to make it with bloc';
                  });
                },
              ),
            ],
          )),
        ],
      )),
    );
  }
}
