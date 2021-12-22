// ignore_for_file: prefer_const_constructors


import 'package:drawer_animation/src/pages/details_page.dart';
import 'package:drawer_animation/src/pages/home_page.dart';
import 'package:drawer_animation/src/pages/login_page.dart';
import 'package:drawer_animation/src/pages/main_page.dart';
import 'package:drawer_animation/src/pages/page2_page.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login': (BuildContext context) => LoginPage(),
        'home': (BuildContext context) => MainPage(pageWidget: Home(),),
        'page2': (BuildContext context) => MainPage(pageWidget: Page2Screen(),),
        'prodcut/details': (BuildContext context) => DetailsPage(),
      },
    );
  }
}
