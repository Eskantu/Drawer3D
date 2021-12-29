import 'package:drawer_animation/src/Providers/Almacen/Productos/ui_productos_provider.dart';
import 'package:drawer_animation/src/pages/Almacen/Productos/NuevoProductoPages/categoria_prducto_page.dart';
import 'package:drawer_animation/src/pages/Almacen/Productos/NuevoProductoPages/informacion_general_page.dart';
import 'package:drawer_animation/src/pages/Almacen/Productos/NuevoProductoPages/nuevo_producto_stepper.dart';
import 'package:drawer_animation/src/pages/Almacen/Productos/NuevoProductoPages/precios_producto_page.dart';
import 'package:drawer_animation/src/pages/Almacen/Productos/NuevoProductoPages/resumen_producto_page.dart';
import 'package:drawer_animation/src/widgets/Almacen/Productos/fotter_widget.dart';
import 'package:drawer_animation/src/widgets/Almacen/Productos/sub_header_widget.dart';
import 'package:drawer_animation/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class ProductosPage extends StatelessWidget {
  const ProductosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _provider = Provider.of<ProductoProvier>(context);
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
        child: Column(
          children: <Widget>[
            const SubHeaderProduct(),
            const SizedBox(height: KDefaultPadding),
            Expanded(
                child: ListView(
              children: const [NuevoProductoPage()],
            )),
            const SizedBox(height: KDefaultPadding),
            ProductFooter(
              onBack: () {
                _provider.currentPage =_provider.currentPage-1;
              },
              onNext: () {
                print(_provider.currentPage);
                if (_provider.currentPage>=4) {
                    ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Guardando producto...')));
                _provider.currentPage =_provider.currentPage=1;
                }
                else{
                  _provider.currentPage =_provider.currentPage+1;
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  _buildAppBar(
    BuildContext context,
  ) {
    return AppBar(
      backgroundColor: Colors.grey[50],
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: KTextColor),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            'assets/icons/search.svg',
            color: KTextColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.format_list_bulleted),
          color: KTextColor,
          onPressed: () {},
        ),
        const SizedBox(width: KDefaultPadding / 2),
      ],
    );
  }
}
