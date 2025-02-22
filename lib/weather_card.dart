import 'package:flutter/material.dart';

class WeatherCard extends StatelessWidget {
  final String location;
  final String weather;
  final int temperature;
  final IconData icon;

  const WeatherCard({
    required this.location,
    required this.weather,
    required this.temperature,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                location,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                weather,
                style: TextStyle(color: Colors.white70),
              ),
            ],
          ),
          Column(
            children: [
              Icon(icon, color: Colors.white, size: 32),
              Text(
                "$temperature°C",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}