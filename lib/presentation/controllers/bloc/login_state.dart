part of 'login_bloc.dart';

@immutable
class LoginState {}

class LoginInitialState extends LoginState {}
class LoginValidationState extends LoginState {
  final String? message;
  LoginValidationState({required this.message});
}
class LoginLoadingState extends LoginState {}
class LoginSuccessState extends LoginState {}
class LoginErrorState extends LoginState {
  final String? error;
  LoginErrorState(this.error);
}
