import 'package:drawer_animation/src/models/product_model.dart';
import 'package:drawer_animation/src/widgets/color_dot_widget.dart';
import 'package:drawer_animation/utils/constants.dart';
import 'package:flutter/material.dart';
class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Color'),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const ColorDot(
                    color: Color(0XFF356C95),
                    isSelected: false,
                  ),
                  const ColorDot(
                    color: Color(0XFFF8C078),
                    isSelected: false,
                  ),
                  const ColorDot(
                    color: Color(0XFFA29B9B),
                    isSelected: true,
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              children: [
                const TextSpan(
                    text: 'Size\n',
                    style: TextStyle(color: KTextColor)),
                TextSpan(
                  text: '${product.size} cm',
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}