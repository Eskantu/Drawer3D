import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const  Text('Swipe right to see the menu'),
              ElevatedButton(
                onPressed: () {},
                child: Text('Press me'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
