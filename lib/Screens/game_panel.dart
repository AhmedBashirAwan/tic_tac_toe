import 'package:flutter/material.dart';
import 'package:tic_tac_toe/Screens/welcome_screen.dart';
import 'package:tic_tac_toe/customized_text.dart';
import '../container.dart';

class GamePanel extends StatefulWidget {
  const GamePanel({Key? key}) : super(key: key);

  @override
  State<GamePanel> createState() => _GamePanelState();
}

class _GamePanelState extends State<GamePanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    height: 30,
                    width: 50,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 20),
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
                  Spacer(),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 17, horizontal: 8),
                    child: TicTacToeSymbol(
                      symbol: "X",
                      color: Colors.orange,
                      fontSize: 30,
                    ),
                  ),
                  Text(
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
            CustomContainer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              child: Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 17, horizontal: 5),
                    child: TicTacToeSymbol(
                      symbol: "o",
                      color: Colors.green,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "Player 2",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                  Spacer(),
                  Container(
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
                    height: 30,
                    width: 50,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 20),
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
                  Spacer(),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Wellcome()),
                      );
                    },
                    icon: Icon(Icons.home),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
