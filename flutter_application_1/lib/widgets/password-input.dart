import 'package:flutter/material.dart';
import 'package:flutter_application_1/palette.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    Key? key,
    required this.icon,
    required this.hint,
    required this.inputAction,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: size.height * 0.08,
        width: size.width * 0.8,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 98, 98, 98).withOpacity(0.4),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Icon(
                  icon,
                  size: 28,
                  color: kWhite,
                ),
              ),
              hintText: hint,
              hintStyle: const TextStyle(
                  fontSize: 22, height: 1.5, fontWeight: FontWeight.w600),
            ),
            obscureText: true,
            style: const TextStyle(
                fontSize: 20, height: 1.5, fontWeight: FontWeight.w400),
            textInputAction: inputAction,
          ),
        ),
      ),
    );
  }
}
