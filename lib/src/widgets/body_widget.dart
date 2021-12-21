
import 'package:drawer_animation/models/product_model.dart';
import 'package:drawer_animation/src/widgets/item_card_widget.dart';
import 'package:drawer_animation/utils/constants.dart';
import 'package:flutter/material.dart';

import 'categorias.dart';

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: KDefaultPadding),
          child: Text(
            'Productos',
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categorias(),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: KDefaultPadding),
              child: GridView.builder(
                itemCount: products.length,

          gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: KDefaultPadding, mainAxisSpacing: KDefaultPadding, childAspectRatio: 0.75, ),
          itemBuilder: (context, index) => ItemCard(
              product: products[index],
              onPress: () {},
          ),
        ),
            ))
      ],
    );
  }
}


