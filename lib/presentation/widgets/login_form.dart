import 'package:flutter/material.dart';
import 'package:login/presentation/widgets/square_tile.dart';
import 'button_widget.dart';
import 'forgot_password.dart';

import 'password_field.dart';
import 'title_and_subtitle_widget.dart';
import 'username_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required this.onTap,
    required this.usernameController,
    required this.passwordController,
    required this.forgotPasswordPressed,
  });

  final void Function()? onTap;
  final void Function()? forgotPasswordPressed;
  final TextEditingController usernameController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TitleAndSubtitle(
                    title: 'Login', subtitle: 'Fill with your data.'),
                usernameField(usernameController),
                const SizedBox(height: 20),
                passwordField(passwordController),
                const SizedBox(height: 10),
                forgotPassword(forgotPasswordPressed: forgotPasswordPressed),
                const SizedBox(height: 10),
                Button(onTap: onTap, text: 'Login'),
                const SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(imgPath: 'lib/images/google.png'),
                    SizedBox(width: 25),
                    SquareTile(imgPath: 'lib/images/apple.png')
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      'Register now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 60),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//todo testar animation de troca de pagina:   onTap(int pageIndex) {
  //pageController.jumpToPage(pageIndex);
//   pageController.animateToPage(pageIndex,
//       duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
// }