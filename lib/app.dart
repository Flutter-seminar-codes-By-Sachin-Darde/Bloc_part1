import 'package:app/views/learn_screen/add_sub_bloc_screen.dart';
import 'package:app/views/learn_screen/add_sub_stateful_screen.dart';
import 'package:app/views/learn_screen/loader_with_stateless_adv_bloc.dart';
import 'package:app/views/learn_screen/loader_with_stateless_cubit.dart';
import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.grey),
      debugShowCheckedModeBanner: false,
      home: LoaderBlocAdvWithStatelessWithCubit(),
    );
  }
}
