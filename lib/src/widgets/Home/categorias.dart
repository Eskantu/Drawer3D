import 'package:drawer_animation/utils/constants.dart';
import 'package:flutter/material.dart';

class Categorias extends StatefulWidget {
  const Categorias({Key? key}) : super(key: key);

  @override
  _CategoriasState createState() => _CategoriasState();
}

class _CategoriasState extends State<Categorias> {
  List<String> categorias = [
    'Damas',
    'Cocina',
    'Electrodomesticos',
    'Muebles',
    'Jardin',
    'Cuidado Personal'
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: KDefaultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          
          scrollDirection: Axis.horizontal,
          itemCount: categorias.length,
          itemBuilder: (context, index) => _buildCategory(index),
        ),
      ),
    );
  }

  Widget _buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: KDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categorias[index],
              style: TextStyle(fontWeight: FontWeight.bold, color: selectedIndex==index? KTextColor: KTextLightColor),
            ),
            Container(
              margin:const EdgeInsets.only( top: KDefaultPadding / 5),
              height: 2,
              width: 30,
              color:selectedIndex==index? Colors.black: Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
