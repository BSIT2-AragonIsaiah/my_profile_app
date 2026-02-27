import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());//Tells flutter to start app and display
}//Entry point for every dart application

class MyApp extends StatelessWidget {//UI doesn't change dynamically
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(//Root of the app & Enables design styling
      debugShowCheckedModeBanner: false,//cleaner presentation
      home: Scaffold(//Basic App structure
        backgroundColor: Colors.grey[200],
        body: SafeArea(//Prevents Overlap
          child: Column(//Stacks widgets vertically
            mainAxisAlignment: MainAxisAlignment.center,//without this... everything sticks to the top
            children: [

              CircleAvatar(//Pre built circular widget
                radius: 150,
                backgroundImage: AssetImage(//works offline images
                  'assets/profile_picture.jpg',
                ),
              ),

              SizedBox(height: 25),//adds vertical spacing

              Text(//display text + formatting
                'Isaiah Orville T. Aragon',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                'Student Developer',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                  letterSpacing: 2,
                ),
              ),

              SizedBox(height: 20),

              Divider(//Separates Personal and Contact Info
                thickness: 5,
                indent: 40,
                endIndent: 40,
              ),

              SizedBox(height: 20),

              Card(//MaterialDesign elevated container
                margin: EdgeInsets.symmetric(horizontal: 25),//creates spacing outside of the card//Same left and right margin(centered)
                child: ListTile(//Prebuilt layout widget//Automatically aligns icon + text// Avoids manual padding
                  leading: Icon(Icons.phone),//Icons are placed on the left
                  title: Text('+63 991 173 0015'),//Main text content
                ),
              ),

              Card(
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('+63 929 397 1185'),
                ),
              ),

              Card(
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
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