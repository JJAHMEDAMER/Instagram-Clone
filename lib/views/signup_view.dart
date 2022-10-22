import 'package:flutter/material.dart';
import 'package:instagram_clone/logic/auth.dart';
import 'package:instagram_clone/utils/app_colors.dart';
import 'package:instagram_clone/widgets/text_field.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final TextEditingController _inputEmail = TextEditingController();
  final TextEditingController _inputPassword = TextEditingController();
  final TextEditingController _inputFirstName = TextEditingController();
  final TextEditingController _inputLastName = TextEditingController();
  final TextEditingController _inputUserName = TextEditingController();
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
              const SizedBox(height: 32),
              Stack(
                children: [
                  CircleAvatar(
                    backgroundColor: blueColor,
                    radius: 64,
                  ),
                  Positioned(
                    bottom: -10,
                    left: 80,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add_a_photo,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 28),
              Row(
                children: [
                  Expanded(
                    child: AppTextField(
                      inputText: _inputFirstName,
                      hintText: 'First Name',
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: AppTextField(
                      inputText: _inputLastName,
                      hintText: 'Last Name',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 18),
              AppTextField(
                hintText: 'Username',
                inputText: _inputUserName,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 18),
              AppTextField(
                hintText: 'Email',
                inputText: _inputEmail,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 18),
              AppTextField(
                hintText: 'Password',
                inputText: _inputPassword,
                keyboardType: TextInputType.visiblePassword,
                isPassword: true,
              ),
              const SizedBox(height: 28),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () async{
                    String response = await Auth().signUp(
                      email: _inputEmail.text,
                      password: _inputPassword.text,
                      username: _inputUserName.text,
                      firstName: _inputFirstName.text,
                      lastName: _inputLastName.text,
                    );
                    print(response);
                    print(_inputEmail.text);
                  },
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
                    'Sign Up',
                    style: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already a member? '),
                  TextButton(
                    onPressed: null,
                    child: Text('Log In'),
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
