import 'package:flutter/material.dart';

import '../../pick_side/components/customized_text.dart';

// ignore: must_be_immutable
class CustomContainer extends StatefulWidget {
  CustomContainer({super.key, required this.playersChar});
  TicTacToeSymbol playersChar;

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  int moves = 0;
  List<List<String>> board = [
    ['', '', ''],
    ['', '', ''],
    ['', '', ''],
  ];

  void _handleCellTap(int row, int col, TicTacToeSymbol char) {
    if (board[row][col] == '') {
      setState(() {
        if (moves % 2 == 0) {
          board[row][col] = 'X'; // Assuming 'X' represents one player
        } else {
          board[row][col] = 'O'; // Assuming 'O' represents the other player
        }
        moves++;
      });

      // Check if there is a winner or if it's a draw
      if (_checkWin(row, col)) {
        // Handle the game result (win)
        print('Player ${moves % 2 == 0 ? 'X' : 'O'} wins!');
        _resetBoard();
      } else if (moves == 9) {
        // Handle the game result (draw)
        print("It's a draw!");
        _resetBoard();
      }
    }
  }

  bool _checkWin(int row, int col) {
    String playerChar = moves % 2 == 0 ? 'X' : 'O';
    // Check row, column, and diagonals for a win
    for (int i = 0; i < 3; i++) {
      if (board[row][i] != playerChar) {
        break;
      }
      if (i == 2) {
        return true;
      }
    }
    for (int i = 0; i < 3; i++) {
      if (board[i][col] != playerChar) {
        break;
      }
      if (i == 2) {
        return true;
      }
    }
    if (row == col) {
      for (int i = 0; i < 3; i++) {
        if (board[i][i] != playerChar) {
          break;
        }
        if (i == 2) {
          return true;
        }
      }
    }
    if (row + col == 2) {
      for (int i = 0; i < 3; i++) {
        if (board[i][2 - i] != playerChar) {
          break;
        }
        if (i == 2) {
          return true;
        }
      }
    }
    return false;
  }

  void _resetBoard() {
    setState(() {
      moves = 0;
      board = [
        ['', '', ''],
        ['', '', ''],
        ['', '', ''],
      ];
    });
  }

  Widget _buildCell(int row, int col) {
    String cellValue = board[row][col];
    Color textColor;

    if (cellValue == 'X') {
      textColor = Colors.orange; // Text color for 'X'
    } else if (cellValue == 'O') {
      textColor = Colors.green; // Text color for 'O'
    } else {
      textColor = Colors.black; // Default text color for empty cell
    }

    return GestureDetector(
      onTap: () => _handleCellTap(row, col, widget.playersChar),
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          border: Border(
            right: BorderSide(
              color: Colors.black,
              width: col < 2 ? 0.7 : 0,
            ),
          ),
        ),
        child: Center(
          child: Text(
            cellValue,
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      height: 340,
      width: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              _buildCell(0, 0),
              _buildCell(0, 1),
              _buildCell(0, 2),
            ],
          ),
          const Divider(
            thickness: 1,
            color: Colors.black54,
          ),
          Row(
            children: [
              _buildCell(1, 0),
              _buildCell(1, 1),
              _buildCell(1, 2),
            ],
          ),
          const Divider(
            // thickness: 1,
            color: Colors.black45,
          ),
          Row(
            children: [
              _buildCell(2, 0),
              _buildCell(2, 1),
              _buildCell(2, 2),
            ],
          ),
        ],
      ),
    );
  }
}
