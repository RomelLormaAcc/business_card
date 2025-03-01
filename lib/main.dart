import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileCard(),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Center(
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Profile Image
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/asfsafasdfas.jpg'),
                ),
                const SizedBox(height: 10),
                // Name
                Text(
                  "John Romel S. Sabado",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Job Title
                Text(
                  "Flutter Developer",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[700],
                  ),
                ),
                const SizedBox(height: 10),
                // Follow Button
                ElevatedButton(
                  onPressed: () {
                    print("Followed John Romel!");
                  },
                  child: Text("Follow"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}