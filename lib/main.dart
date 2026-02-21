import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(
                  'assets/profile_picture.jpg',
                ),
              ),

              SizedBox(height: 15),

              Text(
                'Isaiah Orville T. Aragon',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                'Student Developer',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  letterSpacing: 2,
                ),
              ),

              SizedBox(height: 20),

              Divider(
                thickness: 1,
                indent: 40,
                endIndent: 40,
              ),

              SizedBox(height: 20),

              Card(
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('+63 991 173 0015'),
                ),
              ),

              Card(
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('+63 929 397 1185'),
                ),
              ),

              Card(
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: ListTile(
                  leading: Icon(Icons.email),
                  title: Text('isaiahorville.aragon.23@usjr.edu.ph'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}