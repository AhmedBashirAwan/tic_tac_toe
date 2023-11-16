import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/game_panel/views/game_panel.dart';
import 'package:tic_tac_toe/src/pick_side/components/customized_text.dart';

class PickSide extends StatefulWidget {
  const PickSide({Key? key}) : super(key: key);

  @override
  State<PickSide> createState() => _PickSideState();
}

class _PickSideState extends State<PickSide> {
  bool playerOne = true;
  bool playerTwo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Pick Your Side",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(
            height: 100,
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              TicTacToeSymbol(
                symbol: "X",
                color: Colors.orange,
                fontSize: 70,
              ),
              TicTacToeSymbol(
                symbol: "O",
                color: Colors.green,
                fontSize: 70,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        playerOne = true;
                        playerTwo = false;
                      });
                    },
                    icon: Icon(
                      playerOne
                          ? Icons.check_box
                          : Icons.check_box_outline_blank,
                      color: Colors.grey[700],
                    ),
                  ),
                  const Text(
                    'First',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        playerTwo = true;
                        playerOne = false;
                      });
                    },
                    icon: Icon(
                      playerTwo
                          ? Icons.check_box
                          : Icons.check_box_outline_blank,
                      color: Colors.grey[700],
                    ),
                  ),
                  const Text(
                    'Second',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          ElevatedButton(
            onPressed: () {
              late TicTacToeSymbol char;
              if (playerOne == true) {
                char = const TicTacToeSymbol(
                  symbol: "X",
                  color: Colors.orange,
                  fontSize: 70,
                );
              } else if (playerTwo == true) {
                char = const TicTacToeSymbol(
                  symbol: "O",
                  color: Colors.green,
                  fontSize: 70,
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    backgroundColor: Colors.red,
                    content: Text("Please Select A Side")));
              }

              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => GamePanel(
                          selectedChar: char,
                        )),
              );
            },
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all<Size>(
                const Size(250, 30),
              ),
              padding: MaterialStateProperty.all<EdgeInsets>(
                const EdgeInsets.all(16),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(
                Colors.orange,
              ),
            ),
            child: const Text(
              'Continue',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 15.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
