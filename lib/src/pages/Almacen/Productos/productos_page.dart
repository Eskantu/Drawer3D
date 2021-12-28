import 'package:drawer_animation/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class ProductosPage extends StatelessWidget {
  const ProductosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              children: [
                _buildBody(context),
              ],
            )),
            const SizedBox(height: KDefaultPadding),
            const ProductFooter(),
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

  _buildBody(BuildContext context) {
    return const InformacionGeneralProducto();
  }
}

class InformacionGeneralProducto extends StatelessWidget {
  const InformacionGeneralProducto({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          ElevatedButton(
              onPressed: () {}, child: const Icon(Icons.photo_camera)),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Nombre del producto',
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: KDefaultPadding / 2),
          TextFormField(
            keyboardType: TextInputType.multiline,
            maxLines: null,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              labelText: 'Descripción',
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: KDefaultPadding * 2),
          Image.network(
            'https://concepto.de/wp-content/uploads/2019/11/producto-packaging-e1572738514178.jpg',
            // width: 100,
            // height: 100,
          ),
        ],
      ),
    );
  }
}

class SubHeaderProduct extends StatelessWidget {
  const SubHeaderProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 400,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularStepProgressIndicator(
              totalSteps: 4,
              currentStep: 2,
              stepSize: 8,
              selectedColor: const Color(0XFF73F238),
              unselectedColor: Colors.grey[200],
              padding: 0,
              height: 110,
              width: 110,
              selectedStepSize: 8,
              child: const Center(
                  child: Text(
                '2 de 4',
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

class ProductFooter extends StatelessWidget {
  const ProductFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {},
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
          onPressed: () {},
          child: const Text(
            'Siguiente',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
