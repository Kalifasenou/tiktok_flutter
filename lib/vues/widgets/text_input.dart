import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tiktok_flutter/constants.dart';

class InputText extends StatelessWidget {

//declaration des variables
final TextEditingController controller;
final String labelText;
final bool isObscure;
final IconData icon;

  const InputText({super.key, required this.controller, required this.labelText , required this.icon, required this.isObscure});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(icon),
        labelStyle: const TextStyle(fontSize: 20,)
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: borderColor,
          ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
              color: borderColor,
          ),
      ),
    ),
obscureText: isObscure,
    );
  }
}