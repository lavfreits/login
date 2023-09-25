import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../controllers/bloc/login_bloc.dart';
import '../widgets/loading_indicator_widget.dart';
import '../widgets/login_form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late LoginBloc loginBloc;
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    loginBloc = BlocProvider.of<LoginBloc>(context);
    super.initState();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<LoginBloc, LoginState>(
        bloc: loginBloc,
        listener: (context, state) {
          if (state is LoginValidationState) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.message!)));
          } else if (state is LoginErrorState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.error!)),
            );
          } else if (state is LoginSuccessState) {
            context.go('home');
          }
        },
        builder: (context, state) {
          if (state is LoginInitialState ||
              state is LoginErrorState ||
              state is LoginValidationState) {
            return LoginForm(
              usernameController: _usernameController,
              passwordController: _passwordController,
              onTap: () {
                context.read<LoginBloc>().add(GetLoginEvent(
                    email: _usernameController.text,
                    password: _passwordController.text));
              },
              forgotPasswordPressed: () {},
            );
          } else if (state is LoginLoadingState) {
            return LoadingIndicator();
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
