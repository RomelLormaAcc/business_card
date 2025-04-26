import 'package:flutter/material.dart';

class FoodDetailsScreen extends StatelessWidget {
  final String name;
  final String image;

  const FoodDetailsScreen({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('$name Details')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(image),
            Text('Delicious $name!', style: const TextStyle(fontSize: 24)),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}