import 'package:app/controllers/add_sub_bloc/add_sub_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddSubScreen extends StatelessWidget {
  const AddSubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddSubBloc(),
      child: const AddSubScreenConsumer(),
    );
  }
}

class AddSubScreenConsumer extends StatelessWidget {
  const AddSubScreenConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddSubBloc, AddSubState>(
      builder: (context, state) {
        return Scaffold(
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextField(
                    controller: state.number1Controller,
                    decoration: const InputDecoration(label: Text('Number 1')),
                  ),
                  TextField(
                    controller: state.number2Controller,
                    decoration: const InputDecoration(label: Text('Number 2')),
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<AddSubBloc>(context)
                                .add(SmartEvent(operation: 'ADD'));
                          },
                          child: const Text('Add Me')),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<AddSubBloc>(context)
                                .add(SmartEvent(operation: 'SUB'));
                          },
                          child: const Text('Sub Me'))
                    ],
                  ),
                  Text(
                      'Result: ${state.result != null ? '${state.result}' : "NA"}')
                ]),
          ),
        );
      },
    );
  }
}
