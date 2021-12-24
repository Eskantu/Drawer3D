import 'package:drawer_animation/src/models/product_model.dart';
import 'package:drawer_animation/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: KDefaultPadding),
      child: Row(children: [
        Container(
          margin: const EdgeInsets.only(right: KDefaultPadding),
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(
              color: product.color,
            ),
          ),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
                "assets/icons/add_to_cart.svg", color: product.color,),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 50,
            child: TextButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)) ),
                  backgroundColor: MaterialStateProperty.all(
                      product.color)),
              onPressed: () {},
              child: Text(
                'Buy now'.toUpperCase(),
                style:const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
