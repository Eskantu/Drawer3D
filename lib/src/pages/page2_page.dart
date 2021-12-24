import 'package:drawer_animation/utils/constants.dart';
import 'package:flutter/material.dart';

class Page2Screen extends StatelessWidget {
  const Page2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: const InventoryMenu(),
    );
  }

  _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [
        IconButton(
          icon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        const SizedBox(width: KDefaultPadding / 2),
      ],
    );
  }
}

class InventoryMenu extends StatelessWidget {
  const InventoryMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: const BoxDecoration(
      //   gradient: LinearGradient(
      //     begin: Alignment.topLeft,
      //     end: Alignment.bottomRight,
      //     colors: [
      //       Color(0xFF5967ff),
      //       Color(0xFF5347ff),
      //       Color(0xFF5180ff),
      //       Color(0xFF538bff),
      //       Color(0xFF5995ff),
      //     ],
      //   ),
      // ),
      padding: const EdgeInsets.all(KDefaultPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: SizedBox(
              width: 600,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildCard(text: 'Productos', icon: Icons.inventory_2_sharp),
                  _buildCard(text: 'Categorias', icon: Icons.category_sharp),
                  _buildCard(text: 'Reportes', icon: Icons.summarize_sharp),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildCard({required String text, required IconData icon}) {
    return GestureDetector(
      onTap: () {
        // print('Card tapped');
      },
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 5),
              blurRadius: 5,
              color: Colors.grey,
            ),
          ],
        ),
        width: 100,
        height: 100,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: KDefaultPadding / 2),
              child: Text(
                text,
                style: const TextStyle(
                  color: KTextLightColor,
                  fontSize: 20,
                  fontFamily: 'PTSans',
                ),
              ),
            ),
            const SizedBox(height: KDefaultPadding / 2),
            Icon(
              icon,
              size: 40,
              color: KTextLightColor,
            ),
          ],
        ),
      ),
    );
  }
}
