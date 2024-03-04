import 'package:app/controllers/loader_bloc/loader_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoaderWithStateless extends StatelessWidget {
  const LoaderWithStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoaderBloc(),
      child: const LoaderWithStatelessConsumer(),
    );
  }
}

class LoaderWithStatelessConsumer extends StatelessWidget {
  const LoaderWithStatelessConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoaderBloc, LoaderState>(
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
                  context.read<LoaderBloc>().add(ChangeLoaderEvent());
                  // BlocProvider.of<LoaderBloc>(context).add(ChangeLoaderEvent());
                },
              )),
            )
          ]),
        );
      },
    );
  }
}
