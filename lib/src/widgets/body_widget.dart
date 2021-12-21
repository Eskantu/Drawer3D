import 'package:drawer_animation/src/models/product_model.dart';
import 'package:drawer_animation/src/widgets/item_card_widget.dart';
import 'package:drawer_animation/utils/constants.dart';
import 'package:flutter/material.dart';

import 'categorias.dart';

class BodyWidget extends StatefulWidget {
  @override
  State<BodyWidget> createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  ScrollController _scrollController = ScrollController();
  //Offset state <-------------------------------------
  double offset = 0.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController() //keepScrollOffset: false removed
      ..addListener(() {
        setState(() {
          //<-----------------------------
          offset = _scrollController.offset;
          // force a refresh so the app bar can be updated
        });
      });
  }
    @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

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
            controller: _scrollController,
            itemCount: products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: KDefaultPadding,
              mainAxisSpacing: KDefaultPadding,
              childAspectRatio: 0.75,
            ),
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
