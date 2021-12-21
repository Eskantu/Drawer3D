import 'package:drawer_animation/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:drawer_animation/src/models/product_model.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function onPress;
  const ItemCard({
    Key? key,
    required this.product,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(KDefaultPadding),
            // height: 180,
            // width: 180,
            decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16)),
            child: Image.asset(product.image),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: KDefaultPadding / 4),
          child: Text(
            product.title,
            style:const TextStyle(color: KTextColor),
          ),
        ),
        Text(
          '\$${product.price}',
          style:const TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}