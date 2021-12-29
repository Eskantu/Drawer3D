// ignore_for_file: prefer_const_constructors


import 'package:drawer_animation/src/Providers/Almacen/Productos/ui_productos_provider.dart';
import 'package:drawer_animation/src/pages/Almacen/Categorias/categorias_page.dart';
import 'package:drawer_animation/src/pages/Almacen/Productos/productos_page.dart';
import 'package:drawer_animation/src/pages/Home/DetallesProducto/details_page.dart';
import 'package:drawer_animation/src/pages/Home/home_page.dart';
import 'package:drawer_animation/src/pages/login_page.dart';
import 'package:drawer_animation/src/pages/main_page.dart';
import 'package:drawer_animation/src/pages/Almacen/page2_page.dart';
import 'package:drawer_animation/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
  
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductoProvier()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'login',
        routes: Routes,
      ),
    );
  }
}
