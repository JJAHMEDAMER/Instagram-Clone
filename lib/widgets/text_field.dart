import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/app_colors.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController inputText;
  final String hintText;
  final TextInputType keyboardType;
  final bool isPassword;

  const AppTextField({
    super.key,
    required this.inputText,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    final OutlineInputBorder border = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context),
      borderRadius: BorderRadius.circular(20),
    );
    return TextField(
      //controller
      controller: inputText,
      
      // Keyboard
      keyboardType: keyboardType,

      //is Password
      obscureText: isPassword,

      // Decoration
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(),

        //Padding
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 20,
        ),

        // Fill Colors
        filled: true,
        fillColor: blueColor.withOpacity(0.1),

        // Border
        border: border,
        focusedBorder: border,
      ),
    );
  }
}
