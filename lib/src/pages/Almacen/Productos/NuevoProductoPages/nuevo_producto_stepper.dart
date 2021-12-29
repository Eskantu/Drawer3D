import 'package:drawer_animation/src/Providers/Almacen/Productos/ui_productos_provider.dart';
import 'package:drawer_animation/src/pages/Almacen/Productos/NuevoProductoPages/categoria_prducto_page.dart';
import 'package:drawer_animation/src/pages/Almacen/Productos/NuevoProductoPages/informacion_general_page.dart';
import 'package:drawer_animation/src/pages/Almacen/Productos/NuevoProductoPages/precios_producto_page.dart';
import 'package:drawer_animation/src/pages/Almacen/Productos/NuevoProductoPages/resumen_producto_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@immutable
class NuevoProductoPage extends StatelessWidget {
  const NuevoProductoPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final _provider= Provider.of<ProductoProvier>(context);
     switch (_provider.currentPage) {
      case 1:
        return const InformacionGeneralProducto();
      case 2:
        return const PreciosProductoPage();
      case 3:
        return const CategoriaProductoPage();
      case 4:
        return const ResumenProductoPage();
      default:
        return const InformacionGeneralProducto();
    }
  }
}