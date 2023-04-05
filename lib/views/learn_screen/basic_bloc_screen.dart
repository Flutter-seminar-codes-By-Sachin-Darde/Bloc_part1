import 'package:app/controllers/basic_bloc/basic_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BasicBlocScreen extends StatelessWidget {
  const BasicBlocScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BasicBloc(),
      child: const BasicBlocScreenConsumer(),
    );
  }
}

class BasicBlocScreenConsumer extends StatelessWidget {
  const BasicBlocScreenConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BasicBloc, BasicState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
              child: Column(
            children: [
              Expanded(
                  child: Center(
                child: Text(
                  state.text,
                  style: const TextStyle(fontSize: 25),
                ),
              )),
              Expanded(
                  child: Column(
                children: [
                  ElevatedButton(
                    child: const Text('Make it Hello'),
                    onPressed: () {
                      BlocProvider.of<BasicBloc>(context)
                          .add(ChangeTextToDisplay(text: 'Hello'));
                    },
                  ),
                  ElevatedButton(
                    child: const Text('Make it You\'re welcome'),
                    onPressed: () {
                      BlocProvider.of<BasicBloc>(context)
                          .add(ChangeTextToDisplay(text: 'You\'re welcome'));
                    },
                  ),
                  ElevatedButton(
                    child: const Text(
                        'Make it Let\'s see how to make it with bloc'),
                    onPressed: () {
                      BlocProvider.of<BasicBloc>(context).add(
                          ChangeTextToDisplay(
                              text: 'Congratulations! Let\'t move to next'));
                    },
                  ),
                  ElevatedButton(
                    child: const Text('This our button'),
                    onPressed: () {
                      BlocProvider.of<BasicBloc>(context)
                          .add(ChangeTextToDisplay(text: 'Button'));
                    },
                  ),
                ],
              )),
            ],
          )),
        );
      },
    );
  }
}
