import 'package:app/controllers/login_bloc/login_bloc.dart';
import 'package:app/views/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          LoginBloc(LoginState.initial(isLoginCompleted: false)),
      child: const LoginScreenConsumer(),
    );
  }
}

class LoginScreenConsumer extends StatelessWidget {
  const LoginScreenConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        //
        print("here");
        if (state.isLoginCompleted) {
          // Navi to home
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
          );
        }
      },
      listenWhen: (previous, current) {
        return current.isLoginCompleted;
      },
      buildWhen: (previous, current) {
        if (current.hasError) {
          return false;
        }
        return true;
      },
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(label: Text('User name')),
                  controller: state.emailController,
                ),
                TextField(
                  decoration: InputDecoration(label: Text('password')),
                  controller: state.passwordController,
                ),
                ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<LoginBloc>(context).add(
                          LoginEvent.onLoginPressed(
                              email: state.emailController.text,
                              password: state.passwordController.text));
                    },
                    child: const Text('Login'))
              ],
            ),
          ),
        );
      },
    );
  }
}
