part of 'login_bloc.dart';

@immutable
sealed class LoginEvent {}

class GetLoginEvent extends LoginEvent{
  final String? email;
  final String? password;
  GetLoginEvent({this.email, this.password});
}