import 'package:flutter/material.dart';
import 'package:flutter_application_1/palette.dart';

class RoundedButton extends StatelessWidget {
  var onPressed;

  RoundedButton({
    Key? key,
    required this.buttonName,
    this.onPressed,
  }) : super(key: key);

  final String buttonName;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      width: size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).buttonTheme.colorScheme?.primary,
      ),
      child: FlatButton(
        onPressed: onPressed,
        child: Text(
          'Login',
          style: kBodyText2.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
