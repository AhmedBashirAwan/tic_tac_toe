import 'package:flutter/material.dart';
import 'Screens/game_panel.dart';
import 'Screens/pick_side.dart';
import 'Screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tic Tac Toe',
      home: Wellcome(),
        debugShowCheckedModeBanner: false,
    );
  }
}