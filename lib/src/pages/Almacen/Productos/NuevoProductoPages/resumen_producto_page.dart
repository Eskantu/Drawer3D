import 'package:drawer_animation/utils/constants.dart';
import 'package:flutter/material.dart';

class ResumenProductoPage extends StatelessWidget {
  const ResumenProductoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 50,
          backgroundImage: NetworkImage(
            'https://concepto.de/wp-content/uploads/2019/11/producto-packaging-e1572738514178.jpg',
          ),
        ),
        SizedBox(height: KDefaultPadding),
        DetallesItem(
          caracteristica: 'Nombre producto',
          value: 'galletas oreo',
        ),
        SizedBox(height: KDefaultPadding),
        DetallesItem(
          caracteristica: 'Precio compra',
          value: '\$50',
        ),
        SizedBox(height: KDefaultPadding),
        DetallesItem(
          caracteristica: 'Porciento ganancia',
          value: '1.5%',
        ),
        SizedBox(height: KDefaultPadding),
        DetallesItem(
          caracteristica: 'Precio venta',
          value: '\$65',
        ),
        SizedBox(height: KDefaultPadding),
        DetallesItem(
          caracteristica: 'Categoria',
          value: 'Cremeria',
        ),
        SizedBox(height: KDefaultPadding),
      ],
    );
  }
}

class DetallesItem extends StatelessWidget {
  final String caracteristica;
  final String value;
  const DetallesItem({
    Key? key,
    required this.caracteristica,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            '$caracteristica:',
            style:const TextStyle(fontSize: 20, color: KTextColor),
          ),
         const SizedBox(width: KDefaultPadding),
          Text(
            value,
            style:const TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                color: KTextLightColor),
          ),
        ],
      ),
    );
  }
}
