import 'package:drawer_animation/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoriasPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _buildPopupButton(context);
        },
        child: Icon(Icons.add),
      ),
      body: CategoriasBody(),
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
        const SizedBox(width: KDefaultPadding / 2),
      ],
    );
  }

  _buildPopupButton(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Positioned(
                  right: -40.0,
                  top: -40.0,
                  child: InkResponse(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: CircleAvatar(
                      child: Icon(Icons.close),
                      backgroundColor: Colors.red,
                    ),
                  ),
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Nombre de categoria',
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          child: Text("Guardar"),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                            }
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}

class CategoriasBody extends StatefulWidget {
  @override
  State<CategoriasBody> createState() => _CategoriasBodyState();
}

class _CategoriasBodyState extends State<CategoriasBody> {
  DismissDirection direction = DismissDirection.horizontal;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _categorias.length,
      itemBuilder: (_, i) => Dismissible(
          confirmDismiss: (direction) async {
            return false;
          },
          onUpdate: (DismissUpdateDetails) {
            setState(() {
              direction = DismissUpdateDetails.direction;
            });
          },
          key: Key(_categorias[i]),
          background: _buidBackDismissible(direction),
          onDismissed: (direction) {
            setState(() {
              _categorias.removeAt(i);
            });
            if (direction == DismissDirection.endToStart) {
              // Then show a snackbar.
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${_categorias[i]} eliminada')));
            } else {}
          },
          child: ListTile(
            title: Text(_categorias[i]),
            leading: Icon(
              Icons.category,
              color: KTextLightColor,
            ),
          )),
    );
  }

  _buidBackDismissible(DismissDirection direction) {
    if (direction == DismissDirection.startToEnd) {
      return Container(
        color: Colors.green,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Icon(
                Icons.edit,
                size: 40,
                color: Colors.white,
              ),
            ),
          ],
        ),
      );
    } else {
      return Container(
        color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Icon(
                Icons.delete,
                size: 40,
                color: Colors.white,
              ),
            ),
          ],
        ),
      );
    }
  }
}

List<String> _categorias = [
  'Categoria 1',
  'Categoria 2',
  'Categoria 3',
  'Categoria 4',
  'Categoria 5',
  'Categoria 6',
  'Categoria 7',
  'Categoria 8',
  'Categoria 9',
  'Categoria 10',
  'Categoria 11',
  'Categoria 12',
  'Categoria 13',
  'Categoria 14',
  'Categoria 15',
  'Categoria 16',
  'Categoria 17',
  'Categoria 18',
  'Categoria 19',
  'Categoria 20',
];


