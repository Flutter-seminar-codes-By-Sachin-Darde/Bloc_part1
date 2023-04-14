part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState(
      {required bool isLoading,
      required bool hasError,
      required List<String> names,
      required TextEditingController emailController,
      required TextEditingController passwordController,
      required bool isLoginCompleted}) = _LoginState;
  factory LoginState.initial({
    required bool isLoginCompleted,
  }) {
    return LoginState(
        isLoading: false,
        names: [],
        hasError: false,
        emailController: TextEditingController(),
        passwordController: TextEditingController(),
        isLoginCompleted: isLoginCompleted);
  }
}
