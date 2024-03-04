import 'package:app/controllers/loader_with_cubit/loader_with_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoaderBlocAdvWithStatelessWithCubit extends StatelessWidget {
  const LoaderBlocAdvWithStatelessWithCubit({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoaderWithCubit(
        LoaderWithState.initial(),
      ),
      child: const LoaderBlocAdvWithStatelessWithCubitConsumer(),
    );
  }
}

class LoaderBlocAdvWithStatelessWithCubitConsumer extends StatelessWidget {
  const LoaderBlocAdvWithStatelessWithCubitConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoaderWithCubit, LoaderWithState>(
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
                child: const Text("toggle with cubit"),
                onPressed: () {
                  context
                      .read<LoaderWithCubit>()
                      .toggleLoader();
                },
              )),
            )
          ]),
        );
      },
    );
  }
}
