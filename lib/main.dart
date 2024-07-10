import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int TeamApoints = 0;

  int TeamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepOrange.shade400,
            title: const Text(
              'Point Counter',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        "Team A",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "$TeamApoints",
                        style: TextStyle(
                            fontSize: 220, fontWeight: FontWeight.w400),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepOrange.shade400,
                              minimumSize: Size(150, 50),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Colors.black54, width: 3),
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {
                            setState(() {
                              TeamApoints++;
                            });
                          },
                          child: Text(
                            'Add 1 Point',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                      SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepOrange.shade400,
                              minimumSize: Size(150, 50),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Colors.black54, width: 3),
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {
                            setState(() {
                              TeamApoints = TeamApoints + 2;
                            });
                          },
                          child: Text(
                            'Add 2 Point',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                      SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepOrange.shade400,
                              minimumSize: Size(150, 50),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Colors.black54, width: 3),
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {
                            setState(() {
                              TeamApoints = TeamApoints + 3;
                            });
                          },
                          child: Text(
                            'Add 3 Point',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                      SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 500,
                    child: VerticalDivider(
                      color: Colors.grey[400],
                      thickness: 2,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "Team B",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "$TeamBpoints",
                        style: TextStyle(
                            fontSize: 220, fontWeight: FontWeight.w400),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepOrange.shade400,
                              minimumSize: Size(150, 50),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Colors.black54, width: 3),
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {
                            setState(() {
                              TeamBpoints++;
                            });
                          },
                          child: Text(
                            'Add 1 Point',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                      SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepOrange.shade400,
                              minimumSize: Size(150, 50),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Colors.black54, width: 3),
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {
                            setState(() {
                              TeamBpoints = TeamBpoints + 2;
                            });
                          },
                          child: Text(
                            'Add 2 Point',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                      SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepOrange.shade400,
                              minimumSize: Size(150, 50),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Colors.black54, width: 3),
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {
                            setState(() {
                              TeamBpoints = TeamBpoints + 3;
                            });
                          },
                          child: Text(
                            'Add 3 Point',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                      SizedBox(
                        height: 16,
                      )
                    ],
                  ),
                ],
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange.shade400,
                      minimumSize: Size(150, 50),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black54, width: 3),
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () {
                    setState(() {
                      TeamApoints = 0;
                      TeamBpoints = 0;
                    });
                  },
                  child: Text(
                    'Reset',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
            ],
          )),
    );
  }
}
