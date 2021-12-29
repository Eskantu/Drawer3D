import 'package:drawer_animation/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class CategoriaProductoPage extends StatefulWidget {
  const CategoriaProductoPage({Key? key}) : super(key: key);

  @override
  State<CategoriaProductoPage> createState() => _CategoriaProductoPageState();
}

class _CategoriaProductoPageState extends State<CategoriaProductoPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 300,
      child: Column(children: [
        TypeAheadField(
          noItemsFoundBuilder: (context) => const ListTile(
            leading: Icon(Icons.error),
            title: Text('No se encontraron resultados'),
          ),
          textFieldConfiguration: TextFieldConfiguration(
              autofocus: false,
              controller: _controller,
              decoration: const InputDecoration(
                  hintText: 'Seleccione una categoría',
                  label: Text('Categoría'),
                  suffixIcon: Icon(Icons.keyboard_arrow_down))),
          suggestionsCallback: (text) async {
            return await Future.delayed(
              const Duration(milliseconds: 100),
              () => _categorias
                  .where((c) => c.toLowerCase().startsWith(text.toLowerCase()))
                  .toList(),
            );
          },
          itemBuilder: (context, suggestion) {
            return ListTile(
              leading: const Icon(Icons.category),
              title: Text(suggestion.toString()),
            );
          },
          onSuggestionSelected: (suggestion) {
            setState(() {
              _controller.text = suggestion.toString();
            });
          },
        ),
        Expanded(
          child: ListView.builder(
            itemCount: _categorias.length,
            itemBuilder: (_, i) => ListTile(
              title: Text(_categorias[i]),
              leading: const Icon(
                Icons.category,
                color: KTextLightColor,
              ),
              onTap: () {
                setState(() {
                  _controller.text = _categorias[i];
                });
              },
            ),
          ),
        )
      ]),
    );
  }
}

List<String> _categorias = [
  'Damas',
  'Cocina',
  'Electrodomesticos',
  'Muebles',
  'Jardin',
  'Cuidado Personal'
      'Deportes',
  'Moda',
  'Hogar',
  'Bebes',
  'Libros',
  'Mascotas',
  'Juegos',
  'Musica',
  'Videojuegos',
  'Otros'
];
