import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:movies/common/helper/navigation/app_navigation.dart';
import 'package:movies/core/configs/theme/app_colors.dart';
import 'package:movies/presentation/auth/pages/signup_page.dart';
import 'package:reactive_button/reactive_button.dart';

class SiginPage extends StatelessWidget {
  const SiginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.only(
          top: 100,
          left: 16,
          right: 16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _signinText(),
            const SizedBox(
              height: 60,
            ),
            _emailField(),
            const SizedBox(
              height: 30,
            ),
            _passwordField(),
            const SizedBox(
              height: 60,
            ),
            _signinButton(),
            const SizedBox(
              height: 20,
            ),
            _signupText(context),
          ],
        ),
      ),
    );
  }

  Widget _emailField() {
    return const TextField(
      decoration: InputDecoration(hintText: "Email"),
    );
  }

  Widget _passwordField() {
    return const TextField(
      decoration: InputDecoration(hintText: "Password"),
    );
  }

  Widget _signinButton() {
    return ReactiveButton(
      title: "Sign In",
      activeColor: AppColors.primary,
      onPressed: () async {},
      onSuccess: () {},
      onFailure: (error) {},
    );
  }

  Widget _signinText() {
    return const Text(
      "Sign In",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
    );
  }

  Widget _signupText(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          const TextSpan(text: "Don't you have an account? "),
          TextSpan(
              text: "Sign Up",
              style: const TextStyle(
                color: Colors.blue,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  AppNavigation.pushReplacement(context, const SignupPage());
                }),
        ],
      ),
    );
  }
}
