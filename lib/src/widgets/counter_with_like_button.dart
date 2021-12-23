import 'package:drawer_animation/src/widgets/card_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CounterWithLikeButton extends StatelessWidget {
  const CounterWithLikeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  [
        CartCounter(),
        Container(
          padding: EdgeInsets.all(8),
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: Color(0XFFFF6464),
            shape: BoxShape.circle
          ),
          child: SvgPicture.asset('assets/icons/heart.svg'),
        )
      ],
    );
  }
}
