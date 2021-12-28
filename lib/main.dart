// ignore_for_file: prefer_const_constructors


import 'package:drawer_animation/src/pages/Almacen/Categorias/categorias_page.dart';
import 'package:drawer_animation/src/pages/Almacen/Productos/productos_page.dart';
import 'package:drawer_animation/src/pages/Home/DetallesProducto/details_page.dart';
import 'package:drawer_animation/src/pages/Home/home_page.dart';
import 'package:drawer_animation/src/pages/login_page.dart';
import 'package:drawer_animation/src/pages/main_page.dart';
import 'package:drawer_animation/src/pages/Almacen/page2_page.dart';
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
        'Almacen': (BuildContext context) => MainPage(pageWidget: Page2Screen(),),
        'Almacen/Producto': (BuildContext context) => ProductosPage(),
        'Almacen/Categorias': (BuildContext context) => CategoriasPage(),
        'prodcut/details': (BuildContext context) => DetailsPage(),
      },
    );
  }
}
