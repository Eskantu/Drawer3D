import 'package:drawer_animation/src/models/product_model.dart';
import 'package:drawer_animation/utils/constants.dart';
import 'package:flutter/material.dart';

class ProductTittleWithImage extends StatelessWidget {
  const ProductTittleWithImage({
    Key? key,
    required this.product,
    required this.size,
  }) : super(key: key);

  final Product product;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Dama',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context).textTheme.headline4!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: ' \n\n\n\n\n',
                    ),
                    const TextSpan(
                      text: 'Price \n',
                      // text: size.height.toString(),
                    ),
                    TextSpan(
                      text: '\$${product.price}',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: KDefaultPadding),
              Expanded(
                child: Hero(tag: product.id, child: Image.asset(product.image)),
              )
            ],
          )
        ],
      ),
    );
  }
}
