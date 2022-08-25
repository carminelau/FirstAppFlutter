import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/myTheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  //root of app
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        final provider = Provider.of<ThemeProvider>(context, listen: false);

        return MaterialApp(
          title: 'Total Consierge',
          themeMode: provider.themeMode,
          theme: MyTheme.lightTheme,
          darkTheme: MyTheme.darkTheme,
          initialRoute: '/',
          routes: {
            '/': (context) => const LoginScreen(),
            'ForgotPassword': (context) => const ForgotPassword(),
            'CreateNewAccount': (context) => const CreateNewAccount(),
            'Login': (context) => const ChatPage()
          },
        );
      });
}
