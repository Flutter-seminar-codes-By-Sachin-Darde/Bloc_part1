import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(LoginState loginState) : super(loginState) {
    on<_OnLoginPressed>((event, emit) {
      const String email = "sachin@gmail.com";
      const String password = "123456";
      if (event.email == email && event.password == password) {
        //
        print('Done');
        emit(state.copyWith(isLoginCompleted: true));
      } else {
        //
        print('Failed');
        emit(state.copyWith(
          hasError: true,
        ));
      }
    });
  }
}
