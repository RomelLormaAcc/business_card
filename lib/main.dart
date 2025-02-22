import 'package:flutter/material.dart';
import 'weather_card.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Weather"),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          foregroundColor: Colors.black,
        ),
        body: Column(
          children: [
            const WeatherCard(
              location: "Dhaka",
              weather: "Thunder",
              temperature: 20,
              icon: Icons.flash_on,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Around the world",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const WeatherCard(
              location: "California",
              weather: "Clear",
              temperature: 6,
              icon: Icons.wb_sunny,
            ),
            const WeatherCard(
              location: "Beijing",
              weather: "Mostly sunny",
              temperature: 5,
              icon: Icons.wb_sunny_outlined,
            ),
            const WeatherCard(
              location: "Moscow",
              weather: "Cloudy",
              temperature: -4,
              icon: Icons.cloud,
            ),
          ],
        ),
      ),
    );
  }
}