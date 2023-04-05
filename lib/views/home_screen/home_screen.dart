import 'package:app/views/learn_screen/add_sub_bloc_Screen.dart';
import 'package:app/views/learn_screen/add_sub_stateful_screen.dart';
import 'package:app/views/learn_screen/basic_bloc_screen.dart';
import 'package:app/views/learn_screen/basic_stateful_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            child: const Text('Basic with stateful'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const BasicStatefulScreen()),
              );
            },
          ),
          ElevatedButton(
            child: const Text('Understand bloc - Basic example'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const BasicBlocScreen()),
              );
            },
          ),
          ElevatedButton(
            child: const Text('Sample app with Stateful'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddSubStatefulScreen()),
              );
            },
          ),
          ElevatedButton(
            child: const Text('Let\'t learn how to with bloc?'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddSubScreen()),
              );
            },
          )
        ]),
      ),
    );
  }
}
