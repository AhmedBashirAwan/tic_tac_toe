import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/welcome_screen/views/welcome_screen.dart';
import 'package:tic_tac_toe/src/pick_side/components/customized_text.dart';
import '../components/container.dart';

// ignore: must_be_immutable
class GamePanel extends StatefulWidget {
  GamePanel({Key? key, required this.selectedChar}) : super(key: key);
  TicTacToeSymbol selectedChar;
  @override
  State<GamePanel> createState() => _GamePanelState();
}

class _GamePanelState extends State<GamePanel> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  height: 30,
                  width: 50,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: Text(
                      '1',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 17, horizontal: 8),
                  child: TicTacToeSymbol(
                    symbol: "X",
                    color: Colors.orange,
                    fontSize: 30,
                  ),
                ),
                const Text(
                  "Player 1",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                )
              ],
            ),
          ),
          CustomContainer(
            playersChar: widget.selectedChar,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            child: Row(
              children: [
                const Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 17, horizontal: 5),
                  child: TicTacToeSymbol(
                    symbol: "o",
                    color: Colors.green,
                    fontSize: 30,
                  ),
                ),
                const Text(
                  "Player 2",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
                const Spacer(),
                Container(
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
                  height: 30,
                  width: 50,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: Text(
                      '2',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Wellcome()),
                    );
                  },
                  icon: const Icon(Icons.home),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
