import 'package:flutter/material.dart';

class LoaderWithStateful extends StatefulWidget {
  const LoaderWithStateful({super.key});

  @override
  State<LoaderWithStateful> createState() => _LoaderWithStatefulState();
}

class _LoaderWithStatefulState extends State<LoaderWithStateful> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: Center(
            child: isLoading
                ? const CircularProgressIndicator()
                : const SizedBox(),
          ),
        ),
        Expanded(
          child: Center(
              child: ElevatedButton(
            child: const Text("toggle"),
            onPressed: () {
              setState(() {
                isLoading = !isLoading;
              });
            },
          )),
        )
      ]),
    );
  }
}
