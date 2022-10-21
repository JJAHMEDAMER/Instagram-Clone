import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/app_colors.dart';
import 'package:instagram_clone/widgets/text_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController inputEmail = TextEditingController();
  final TextEditingController inputPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Instagram',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 64),
              AppTextField(
                hintText: 'Email',
                inputText: inputEmail,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 18),
              AppTextField(
                hintText: 'Password',
                inputText: inputPassword,
                keyboardType: TextInputType.visiblePassword,
                isPassword: true,
              ),
              const SizedBox(height: 28),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: blueColor,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Text(
                    'Log In',
                    style: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: null,
                child: Text('Forgot Password'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a member? '),
                  TextButton(
                    onPressed: null,
                    child: Text('Sign up'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
