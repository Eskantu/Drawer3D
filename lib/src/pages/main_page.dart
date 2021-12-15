import 'dart:math';

import 'package:drawer_animation/src/widgets/menu_header_widget.dart';
import 'package:drawer_animation/src/widgets/menu_items_widget.dart';
import 'package:flutter/material.dart';


class MainPage extends StatefulWidget {
  const MainPage({ Key? key, required this.pageWidget }) : super(key: key);
 final Widget pageWidget;
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue.shade400,
                  Colors.blue.shade800,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          SafeArea(
            child: Container(
              width: 200,
              padding: EdgeInsets.all(8),
              child: Column(
                children:const [
                MenuHeader(),
                MenuItems(),
                ],
              ),
            ),
          ),
          TweenAnimationBuilder(
              curve: Curves.easeInExpo,
              tween: Tween<double>(end: value, begin: 0),
              duration: Duration(milliseconds: 500),
              builder: (_, double val, __) {
                return Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..setEntry(0, 3, 200 * val)
                    ..rotateY((pi / 6) * val),
                  child:widget.pageWidget,
                );
              }),
          GestureDetector(
            onHorizontalDragUpdate: (details) {
              if (details.delta.dx > 0) {
                setState(() {
                  value = 1;
                });
              } else {
                setState(() {
                  value = 0;
                });
              }
            },
          )
        ],
      ),
    );
  }
}