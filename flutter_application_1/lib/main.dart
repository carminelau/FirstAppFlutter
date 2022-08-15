import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(
        title: "Ciao",
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key, required this.title}) : super(key: key);
  static Random r = Random();
  final String title;

  final String myText = "Ciao";
  final int n = r.nextInt(1000);

  String image = "assert/strada_al_tramonto.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assert/strada_al_tramonto.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 60, left: 250, right: 15, bottom: 15),
            child: ElevatedButton.icon(
                label: Text('Sign In'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurpleAccent,
                  onPrimary: Colors.white,
                  textStyle: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w600),
                  fixedSize: const Size(150, 40),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SignIn(title: 'Sign In ');
                  }));
                },
                icon: Icon(Icons.account_circle_sharp)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 150, left: 15, right: 15, bottom: 15),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Username',
                  fillColor: Colors.white70,
                  filled: true),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 0, left: 15, right: 15, bottom: 50),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Password',
                  fillColor: Colors.white70,
                  filled: true),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              onPrimary: Colors.white,
              textStyle:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              fixedSize: const Size(120, 40),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
            ),
            child: Text('Log In'),
            onPressed: () {},
          )
        ],
      ),
    ));
  }
}

class SignIn extends StatelessWidget {
  const SignIn({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assert/strada_al_tramonto.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        top: 60, left: 0, right: 300, bottom: 15),
                    child: ElevatedButton.icon(
                        label: Text(''),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          onPrimary: Colors.white,
                          textStyle: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                          fixedSize: const Size(40, 40),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return HomePage(title: 'SignIn');
                          }));
                        },
                        icon: Icon(Icons.arrow_circle_left_rounded)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 10, left: 15, right: 15, bottom: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Nome',
                          fillColor: Colors.white70,
                          filled: true),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 0, left: 15, right: 15, bottom: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Cognome',
                          fillColor: Colors.white70,
                          filled: true),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 0, left: 15, right: 15, bottom: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Data di Nascita',
                          fillColor: Colors.white70,
                          filled: true),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 0, left: 15, right: 15, bottom: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Città (PROV)',
                          fillColor: Colors.white70,
                          filled: true),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 0, left: 15, right: 15, bottom: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Indirizzo',
                          fillColor: Colors.white70,
                          filled: true),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 0, left: 15, right: 15, bottom: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Username',
                          fillColor: Colors.white70,
                          filled: true),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 0, left: 15, right: 15, bottom: 10),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Password',
                          fillColor: Colors.white70,
                          filled: true),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 0, left: 15, right: 15, bottom: 10),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Confirmed Password',
                          fillColor: Colors.white70,
                          filled: true),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      onPrimary: Colors.white,
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w600),
                      fixedSize: const Size(120, 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    child: Text('Sign In'),
                    onPressed: () {},
                  )
                ],
              ),
            )));
  }
}
