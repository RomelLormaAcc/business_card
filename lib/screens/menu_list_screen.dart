import 'package:flutter/material.dart';
import 'food_details_screen.dart';

class MenuListScreen extends StatelessWidget {
  const MenuListScreen({super.key});

  final List<Map<String, String>> foodItems = const [
    {'name': 'Fries', 'image': 'images/fr.jpg'},
    {'name': 'Bacon', 'image': 'images/bac.jpg'},
    {'name': 'Steak', 'image': 'images/stek.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu List')),
      body: ListView.builder(
        itemCount: foodItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(foodItems[index]['name']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FoodDetailsScreen(
                    name: foodItems[index]['name']!,
                    image: foodItems[index]['image']!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}