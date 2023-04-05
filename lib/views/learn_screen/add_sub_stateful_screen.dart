import 'package:flutter/material.dart';

class AddSubStatefulScreen extends StatefulWidget {
  const AddSubStatefulScreen({super.key});

  @override
  State<AddSubStatefulScreen> createState() => _AddSubStatefulScreenState();
}

class _AddSubStatefulScreenState extends State<AddSubStatefulScreen> {
  final TextEditingController number1 = TextEditingController();
  final TextEditingController number2 = TextEditingController();
  bool resultReady = false;
  String operation = '';
  int result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: number1,
                decoration: const InputDecoration(label: Text('Number 1')),
              ),
              TextField(
                controller: number2,
                decoration: const InputDecoration(label: Text('Number 2')),
              ),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          int no1 = int.parse(number1.text);
                          int no2 = int.parse(number2.text);
                          result = no1 + no2;
                          operation = 'Add';
                          resultReady = true;
                        });
                      },
                      child: const Text('Add Me')),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          int no1 = int.parse(number1.text);
                          int no2 = int.parse(number2.text);
                          result = no1 - no2;
                          operation = 'Sub';
                          resultReady = true;
                        });
                      },
                      child: const Text('Sub Me'))
                ],
              ),
              Text('Result: ${resultReady ? '$operation $result' : "NA"}')
            ]),
      ),
    );
  }
}
