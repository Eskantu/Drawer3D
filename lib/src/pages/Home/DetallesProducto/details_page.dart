import 'package:drawer_animation/src/widgets/Home/DetallesProducto/detail_body_widget.dart';
import 'package:drawer_animation/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:drawer_animation/src/models/product_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Product product =
        ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      appBar: _buildAppBar(context, product),
      body: DetailBodyWidget(product: product,),
    );
  }

  _buildAppBar(
    BuildContext context,
    Product product,
  ) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset('assets/icons/search.svg'),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset("assets/icons/cart.svg"),
          onPressed: () {},
        ),
        const SizedBox(width: KDefaultPadding / 2),
      ],
    );
  }
}
