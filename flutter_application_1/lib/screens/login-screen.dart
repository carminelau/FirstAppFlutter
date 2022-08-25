import 'package:flutter/material.dart';
import 'package:flutter_application_1/palette.dart';
import 'package:flutter_application_1/widgets/change_theme_button.dart';
import 'package:flutter_application_1/widgets/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/screens/myTheme.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          appBar: AppBar(
            backgroundColor: Colors.orange,
            actions: [
              ChangeThemeButton(),
            ],
          ),
          body: Column(
            children: [
              const Flexible(
                child: Center(
                  child: Text(
                    'Total Concierge',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const TextInputField(
                    icon: FontAwesomeIcons.envelope,
                    hint: 'Email',
                    inputType: TextInputType.emailAddress,
                    inputAction: TextInputAction.next,
                  ),
                  const PasswordInput(
                    icon: FontAwesomeIcons.lock,
                    hint: 'Password',
                    //inputType: TextInputType.visiblePassword,
                    inputAction: TextInputAction.done,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, 'ForgotPassword'),
                    child: const Text(
                      'Forgot password',
                      style: kBodyText,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  RoundedButton(
                    buttonName: 'Login',
                    onPressed: () => Navigator.pushNamed(context, 'Login'),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  GestureDetector(
                    onTap: () =>
                        Navigator.pushNamed(context, 'CreateNewAccount'),
                    child: Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(width: 1, color: kWhite))),
                      child: const Text(
                        'Create New Account',
                        style: kBodyText,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //const ChangeThemeButton(),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
