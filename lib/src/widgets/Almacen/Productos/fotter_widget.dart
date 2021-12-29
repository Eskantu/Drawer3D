import 'package:drawer_animation/src/Providers/Almacen/Productos/ui_productos_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductFooter extends StatelessWidget {
  const ProductFooter({Key? key, required this.onNext, required this.onBack})
      : super(key: key);
  final VoidCallback onNext;
  final VoidCallback onBack;
  @override
  Widget build(BuildContext context) {
    final _provider = Provider.of<ProductoProvier>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: _provider.currentPage == 1 ? null : onBack,
          child: const Text(
            'Regresar',
            style: TextStyle(color: Color(0XFF3079D9)),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              const Color(0XFFE2EBFA),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: onNext,
          child: Text(
           _provider.currentPage==4?"Guardar": 'Siguiente',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
