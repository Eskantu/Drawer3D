import 'package:drawer_animation/utils/constants.dart';
import 'package:flutter/material.dart';

class PreciosProductoPage extends StatelessWidget {
  const PreciosProductoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            icon: Icon(Icons.payments),
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            labelText: 'Precio de compra',
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(height: KDefaultPadding / 2),
        TextFormField(
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            icon: Icon(Icons.price_change),
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            labelText: 'Porciento de ganancia',
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(height: KDefaultPadding / 2),
        TextFormField(
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            icon: Icon(Icons.point_of_sale),
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            labelText: 'Precio de venta',
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
