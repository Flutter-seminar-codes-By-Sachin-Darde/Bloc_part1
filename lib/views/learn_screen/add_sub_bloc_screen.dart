import 'package:app/controllers/add_sub_bloc/add_sub_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddSubScreen extends StatelessWidget {
  const AddSubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddSubBloc(),
      child: AddSubScreenConsumer(),
    );
  }
}

class AddSubScreenConsumer extends StatelessWidget {
  AddSubScreenConsumer({super.key});
  final TextEditingController number1 = TextEditingController();
  final TextEditingController number2 = TextEditingController();

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
                            int no1 = int.parse(number1.text);
                            int no2 = int.parse(number2.text);
                            BlocProvider.of<AddSubBloc>(context)
                                .add(AddEvent(no1: no1, no2: no2));
                          },
                          child: const Text('Add Me')),
                      ElevatedButton(
                          onPressed: () {
                            int no1 = int.parse(number1.text);
                            int no2 = int.parse(number2.text);
                            BlocProvider.of<AddSubBloc>(context)
                                .add(SubEvent(no1: no1, no2: no2));
                          },
                          child: const Text('Sub Me'))
                    ],
                  ),
                  Text(
                      'Result: ${state.resultReady ? '${state.operation} ${state.result}' : "NA"}')
                ]),
          ),
        );
      },
    );
  }
}
