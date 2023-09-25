import 'package:bloc/bloc.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitialState()) {
    on<GetLoginEvent>((event, emit) async {
      String message =
          validation(event.email.toString(), event.password.toString());
      if (message != '') {
        emit(LoginValidationState(message: message));
      } else {
        emit(LoginLoadingState());
        try {
          if (event.email == 'example@gmail.com' &&
              event.password == 'pass123') {
            await Future.delayed(const Duration(seconds: 3));
            emit(LoginSuccessState());
          } else {
            emit(LoginErrorState('Invalid credentials'));
          }
        } catch (error) {
          emit(LoginErrorState(error.toString()));
        }
      }
    });
  }
}

String validation(String email, String password) {
  if (email.isEmpty) {
    return 'Please enter an email!';
  } else if (!EmailValidator.validate(email)) {
    return 'Please enter a valid email!';
  } else if (password.isEmpty) {
    return 'Please enter a password';
  } else if (password.length < 6) {
    return 'Password must be at least 6 characters';
  }
  return '';
}
