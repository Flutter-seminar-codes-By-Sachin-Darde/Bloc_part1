import 'package:app/controllers/loader_bloc_adv/loader_bloc_adv_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoaderBlocAdvWithStatelessWithAdvBloc extends StatelessWidget {
  const LoaderBlocAdvWithStatelessWithAdvBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoaderBlocAdvBloc(
        LoaderBlocAdvState.initial(),
      ),
      child: const LoaderBlocAdvWithStatelessWithAdvBlocConsumer(),
    );
  }
}

class LoaderBlocAdvWithStatelessWithAdvBlocConsumer extends StatelessWidget {
  const LoaderBlocAdvWithStatelessWithAdvBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoaderBlocAdvBloc, LoaderBlocAdvState>(
      builder: (context, state) {
        return Scaffold(
          body: Column(children: [
            Expanded(
              child: Center(
                child: state.isLoading
                    ? const CircularProgressIndicator()
                    : const SizedBox(),
              ),
            ),
            Expanded(
              child: Center(
                  child: ElevatedButton(
                child: const Text("toggle with bloc"),
                onPressed: () {
                  context
                      .read<LoaderBlocAdvBloc>()
                      .add(const LoaderBlocAdvEvent.toggleLoader());
                },
              )),
            )
          ]),
        );
      },
    );
  }
}
