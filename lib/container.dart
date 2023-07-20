import 'package:flutter/material.dart';
import 'package:tic_tac_toe/customized_text.dart';

class CustomContainer extends StatefulWidget {
  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  List<List<String>> board = [
    ['', '', ''],
    ['', '', ''],
    ['', '', ''],
  ];

  void _handleCellTap(int row, int col) {
    if (board[row][col] == '') {
      setState(() {
        board[row][col] = 'X';
      });
    }
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
            offset: Offset(0, 3),
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
              GestureDetector(
                onTap: () => _handleCellTap(0, 0),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        color: Colors.black,
                        width: 0.1,
                      ),
                    ),
                  ),
                  child: Center(child: Text(board[0][0])),
                ),
              ),
              GestureDetector(
                onTap: () => _handleCellTap(0, 1),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: Colors.black,
                        width: 0.1,
                      ),
                    ),
                  ),
                  child: Center(child: Text(board[0][1])),
                ),
              ),
              GestureDetector(
                onTap: () => _handleCellTap(0, 2),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: Colors.black,
                        width: 0.1,
                      ),
                    ),
                  ),
                  child: Center(child: Text(board[0][2])),
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              GestureDetector(
                onTap: () => _handleCellTap(1, 0),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        color: Colors.black,
                        width: 0.1,
                      ),
                    ),
                  ),
                  child: Center(child: Text(board[1][0])),
                ),
              ),
              GestureDetector(
                onTap: () => _handleCellTap(1, 1),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: Colors.black,
                        width: 0.1,
                      ),
                    ),
                  ),
                  child: Center(child: Text(board[1][1])),
                ),
              ),
              GestureDetector(
                onTap: () => _handleCellTap(1, 2),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: Colors.black,
                        width: 0.1,
                      ),
                    ),
                  ),
                  child: Center(child: Text(board[1][2])),
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              GestureDetector(
                onTap: () => _handleCellTap(2, 0),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        color: Colors.black,
                        width: 0.1,
                      ),
                    ),
                  ),
                  child: Center(child: Text(board[2][0])),
                ),
              ),
              GestureDetector(
                onTap: () => _handleCellTap(2, 1),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: Colors.black,
                        width: 0.1,
                      ),
                    ),
                  ),
                  child: Center(child: Text(board[2][1])),
                ),
              ),
              GestureDetector(
                onTap: () => _handleCellTap(2, 2),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: Colors.black,
                        width: 0.1,
                      ),
                    ),
                  ),
                  child: Center(child: Text(board[2][2])),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
