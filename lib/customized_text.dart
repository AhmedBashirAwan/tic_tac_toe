import 'package:flutter/material.dart';

class TicTacToeSymbol extends StatelessWidget {
  final String symbol;
  final Color color;
  final double fontSize;

  TicTacToeSymbol({required this.symbol, required this.color, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      symbol,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
