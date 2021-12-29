import 'package:drawer_animation/utils/constants.dart';
import 'package:flutter/material.dart';


class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}


class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildOutLineButton(Icons.remove, () {
          setState(() {
            if (numOfItems > 1) {
              numOfItems--;
            }
          });
        }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: KDefaultPadding / 2),
          child: Text(
            numOfItems.toString().padLeft(2, '0'),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        _buildOutLineButton(Icons.add, () {
          setState(() {
            numOfItems++;
          });
        })
      ],
    );
  }

  Widget _buildOutLineButton(IconData icon, VoidCallback function) {
    return SizedBox(
        width: 40,
        height: 32,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
          ),
          onPressed: function,
          child: Icon(icon),
        ));
  }
}