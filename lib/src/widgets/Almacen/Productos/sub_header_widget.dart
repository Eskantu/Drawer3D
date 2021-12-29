import 'package:drawer_animation/src/Providers/Almacen/Productos/ui_productos_provider.dart';
import 'package:drawer_animation/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class SubHeaderProduct extends StatefulWidget {
  const SubHeaderProduct({Key? key}) : super(key: key);

  @override
  State<SubHeaderProduct> createState() => _SubHeaderProductState();
}

class _SubHeaderProductState extends State<SubHeaderProduct>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final _provider = Provider.of<ProductoProvier>(context);
    return Center(
      child: SizedBox(
        width: 400,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularStepProgressIndicator(
              totalSteps: 4,
              currentStep: _provider.currentPage,
              stepSize: 8,
              selectedColor: const Color(0XFF73F238),
              unselectedColor: Colors.grey[200],
              padding: 0,
              height: 110,
              width: 110,
              selectedStepSize: 8,
              child:  Center(
                  child: Text(
                '${_provider.currentPage} de 4',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              )),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Información general',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: KTextColor),
                ),
                Text(
                  'Siguiente: precios',
                  style: TextStyle(
                      fontSize: 14.0,
                      fontStyle: FontStyle.italic,
                      color: KTextLightColor),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
