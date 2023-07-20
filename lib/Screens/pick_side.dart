import 'package:flutter/material.dart';
import 'package:tic_tac_toe/Screens/game_panel.dart';
import 'package:tic_tac_toe/customized_text.dart';

class PickSide extends StatefulWidget {
  const PickSide({Key? key}) : super(key: key);

  @override
  State<PickSide> createState() => _PickSideState();
}

class _PickSideState extends State<PickSide> {
  // bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Pick Your Side",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 80, horizontal: 50),
                  child: Column(
                    children: [
                      TicTacToeSymbol(
                        symbol: "X",
                        color: Colors.orange,
                        fontSize: 70,
                      ),
                      // IconButton(
                      //   onPressed: () {
                      //     setState(() {
                      //       _isChecked =
                      //           !_isChecked; // toggle the checkbox state
                      //     });
                      //   },
                      //   icon: Icon(
                      //     _isChecked
                      //         ? Icons.check_box
                      //         : Icons
                      //             .check_box_outline_blank, // display a checked or unchecked checkbox icon based on the state
                      //     color: Colors.grey[700], // set the color of the icon
                      //   ),
                      // ),
                      Text(
                        'First',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 80, horizontal: 50),
                  child: Column(
                    children: [
                      TicTacToeSymbol(
                        symbol: "O",
                        color: Colors.green,
                        fontSize: 70,
                      ),
                      // IconButton(
                      //   onPressed: () {
                      //     setState(() {
                      //       _isChecked = !_isChecked;
                      //     });
                      //   },
                      //   icon: Icon(
                      //     _isChecked
                      //         ? Icons.check_box
                      //         : Icons.check_box_outline_blank,
                      //     color: Colors.grey[700],
                      //   ),
                      // ),
                      Text(
                        'Second',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GamePanel()),
                );
              },
              child: Text(
                'Continue',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 15.0,
                ),
              ),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(
                  Size(250, 30),
                ),
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.all(16),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all(
                  Colors.orange, // add background color to the button
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
