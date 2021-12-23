import 'package:drawer_animation/src/models/product_model.dart';
import 'package:drawer_animation/src/widgets/add_to_cart.dart';
import 'package:drawer_animation/src/widgets/color_and_size.dart';
import 'package:drawer_animation/src/widgets/counter_with_like_button.dart';
import 'package:drawer_animation/src/widgets/description_widget.dart';
import 'package:drawer_animation/src/widgets/product_tittle_with_image.dart';
import 'package:drawer_animation/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailBodyWidget extends StatelessWidget {
  final Product product;

  const DetailBodyWidget({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: product.color,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: size.height,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: KDefaultPadding,
                      right: KDefaultPadding,
                    ),
                    // height: 550,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      children: [
                        ColorAndSize(product: product),
                        SizedBox(height: KDefaultPadding/2),
                        Description(product: product),
                        SizedBox(height: KDefaultPadding/2),
                        const CounterWithLikeButton(),
                        SizedBox(height: KDefaultPadding/2),
                        AddToCart(product: product)
                      ],
                    ),
                  ),
                  ProductTittleWithImage(product: product, size: size)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
