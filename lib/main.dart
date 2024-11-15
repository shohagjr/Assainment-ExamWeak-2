import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyProfilePage(),
    );
  }
}

class MyProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[700],
        title: Text('My Profile'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.call),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ProfileSection(
            icon: Icons.icecream_outlined,
            text: 'Ice cream is very delicious right?',
          ),
          ProfileSection(
            icon: Icons.code,
            text: 'Programming is not boring if you love it.',
          ),
          ProfileSection(
            icon: Icons.egg_outlined,
            text: 'If you submit code directly copy from chatgpt than mark will be 0.',
          ),
        ],
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  final IconData icon;
  final String text;

  ProfileSection({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.deepPurple[100],
            child: Icon(
              icon,
              size: 60,
              color: Colors.purple[900],
            ),
          ),
          SizedBox(height: 10),
          Text(
            text,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
