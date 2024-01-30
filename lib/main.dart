import 'package:flutter/material.dart';
import 'pages/profile.dart';

void main() {
  runApp(instagram_ui());
}

class instagram_ui extends StatelessWidget {
  const instagram_ui({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}
