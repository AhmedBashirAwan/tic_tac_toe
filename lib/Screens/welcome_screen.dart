import 'package:flutter/material.dart';
import 'package:tic_tac_toe/Screens/pick_side.dart';

class Wellcome extends StatefulWidget {
  const Wellcome({Key? key}) : super(key: key);

  @override
  State<Wellcome> createState() => _WellcomeState();
}

class _WellcomeState extends State<Wellcome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.orange,
              Colors.pink,
            ],
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 60, horizontal: 100),
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Tic Tac Toe",
                style: TextStyle(
                    fontFamily: 'Proxima Nova',
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.white),
              ),
              SizedBox(
                height: 250,
              ),
              // Image(
              //   image: AssetImage('assets/logo.png'),
              //   width: 200.0,
              //   height: 200.0,
              // ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        // title: Text('Popup Dialog'),
                        content: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 8),
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
                child: Text(
                  'SINGLE PLAYER',
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
                    EdgeInsets.all(16), // add padding to the button
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15), // add shape to the button
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.white, // add background color to the button
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PickSide()),
                  );
                },
                child: Text(
                  'WITH A FRIEND',
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
                    EdgeInsets.all(16), // add padding to the button
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15), // add shape to the button
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.white, // add background color to the button
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60.0),
                child: Divider(
                  color: Colors.grey,
                  height: 0.1,
                ),
              ),
              Spacer(),
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
                        title: Text('Settings'),
                        content: Column(
                          children: [
                            Row(
                              children: [
                                Text("Music :"),
                                Spacer(),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.music_note))
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Icon(Icons.settings),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
