import 'package:flutter/material.dart';


class ClimbingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Climbing conversions",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
              children: <Widget>[
                Expanded(
                  flex: 9,
                  child: ListView(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.all(24.0),
                            height: 600.0,
                            width: 800.0,
                            decoration: new BoxDecoration(
                              image: DecorationImage(
                                image: new AssetImage(
                                    'assets/Bouldering.png'),
                                fit: BoxFit.fill,
                              ),
                              borderRadius:
                              BorderRadius.circular(4.0),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(24.0),
                            height: 600.0,
                            width: 800.0,
                            decoration: new BoxDecoration(
                              image: DecorationImage(
                                image: new AssetImage(
                                    'assets/RockClimbing.png'),
                                fit: BoxFit.fill,
                              ),
                              borderRadius:
                              BorderRadius.circular(4.0),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        'This app was developed by GF', // my personal signature
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 11.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
      ),

    );
  }
}


