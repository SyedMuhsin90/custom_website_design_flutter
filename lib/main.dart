import 'package:custom_portfolio_website/landing_page.dart';
import 'package:custom_portfolio_website/navbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'googlefonts',
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromRGBO(200, 150, 200, 5.0),
                Color.fromRGBO(36, 11, 54, 1.0),
              ]),
        ),
        child: const SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Navbar(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
                child: LandingPage(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
