import 'package:flutter/material.dart';

class MenuHeader extends StatelessWidget {
  const MenuHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const[
          CircleAvatar(
            radius: 50,
            backgroundImage:
                NetworkImage('https://randomuser.me/api/portraits/men/81.jpg'),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '@Eskantu',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
