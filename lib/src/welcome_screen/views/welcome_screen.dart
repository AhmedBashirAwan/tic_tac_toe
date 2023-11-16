import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/pick_side/views/pick_side.dart';

class Wellcome extends StatefulWidget {
  const Wellcome({Key? key}) : super(key: key);

  @override
  State<Wellcome> createState() => _WellcomeState();
}

class _WellcomeState extends State<Wellcome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.orange,
            Colors.pink,
          ],
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 100),
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Tic Tac Toe",
              style: TextStyle(
                  fontFamily: 'Proxima Nova',
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
            const SizedBox(
              width: 100.0,
              height: 100.0,
              // child:  FittedBox(
              //   child: Image(
              //     image: AssetImage('assets/logo.png'),
              //   ),
              // ),
            ),
            const SizedBox(
              height: 250,
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const AlertDialog(
                      title: Text('Popup Dialog'),
                      content: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 8),
                        child: Text(
                          'Coming Soon...',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      actions: [],
                    );
                  },
                );
              },
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(
                  const Size(250, 30),
                ),
                padding: MaterialStateProperty.all<EdgeInsets>(
                  const EdgeInsets.all(16), // add padding to the button
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(15), // add shape to the button
                  ),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.white, // add background color to the button
                ),
              ),
              child: const Text(
                'SINGLE PLAYER',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 15.0,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PickSide()),
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
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.white,
                ),
              ),
              child: const Text(
                'WITH A FRIEND',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 15.0,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 60.0),
              child: Divider(
                color: Colors.grey,
                height: 0.1,
              ),
            ),
            const Spacer(),
            FloatingActionButton(
              mini: true,
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              elevation: 4.0,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Settings'),
                      content: Column(
                        children: [
                          Row(
                            children: [
                              const Text("Music :"),
                              const Spacer(),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.music_note))
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: const Icon(Icons.settings),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
