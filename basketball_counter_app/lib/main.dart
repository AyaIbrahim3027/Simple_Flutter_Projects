import 'package:flutter/material.dart';

void main() {
  runApp(pointsCounter());
}

class pointsCounter extends StatefulWidget {
  @override
  State<pointsCounter> createState() => _pointsCounterState();
}

class _pointsCounterState extends State<pointsCounter> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Points Counter'),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 32,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Team A',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      '$teamAPoints',
                      style: TextStyle(
                        fontSize: 200,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        // print('add 1 Point');
                        // teamAPoints++;
                        setState(() {
                          teamAPoints++;
                        });
                        print(teamAPoints);
                      },
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.black,
                        ),
                      ),
                    ),

                    // Spacer(flex: 1,),
                    SizedBox(height: 16,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoints+=2;
                        });
                      },
                      child: Text(
                        'Add 2 Point',
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.black,
                        ),
                      ),
                    ),

                    // Spacer(flex: 1,),
                    SizedBox(height: 16,),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoints+=3;
                        });
                      },
                      child: Text(
                        'Add 3 Point',
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    // Spacer(flex: 12,),


                  ],
                ),

                SizedBox(
                  height: 450,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 3,
                    // indent: 30,
                    // endIndent: 250,
                  ),
                ),



                Column(
                  children: [
                    Text(
                      'Team B',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      '$teamBPoints',
                      style: TextStyle(
                        fontSize: 200,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoints++;
                        });
                      },
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.black,
                        ),
                      ),
                    ),

                    // Spacer(flex: 1,),
                    SizedBox(height: 16,),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoints+=2;
                        });
                      },
                      child: Text(
                        'Add 2 Point',
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.black,
                        ),
                      ),
                    ),

                    // Spacer(flex: 1,),
                    SizedBox(height: 16,),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(150, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoints+=3;
                        });
                      },
                      child: Text(
                        'Add 3 Point',
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    // Spacer(flex: 12,),


                  ],
                ),

              ],
            ),
            Spacer(flex: 4,),
            // SizedBox(height: 64,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                minimumSize: Size(150, 50),
              ),
              onPressed: () {
                setState(() {
                  teamAPoints=0;
                  teamBPoints=0;
                });
              },
              child: Text(
                'Reset',
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.black,
                ),
              ),
            ),
            Spacer(flex: 8,),
          ],
        ),
      ),
    );
  }
}
