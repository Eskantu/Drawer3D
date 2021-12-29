import 'package:drawer_animation/utils/constants.dart';
import 'package:flutter/material.dart';

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