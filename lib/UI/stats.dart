import 'package:flutter/material.dart';

class Stats extends StatefulWidget {
  @override
  _StatsState createState() => _StatsState();
}

class _StatsState extends State<Stats> {
  @override
  Widget build(BuildContext context) {
    String dropValue = 'Weekly';
    return Scaffold(
        backgroundColor: Color(0xFFFFE4D4),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Data Report',
                      style: TextStyle(
                        fontFamily: 'CoreSans',
                        fontSize: 30.0,
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.more_vert),
                      color: Colors.black,
                      iconSize: 27.0,
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
                SizedBox(height: 15.0),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: 160.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'All Activiy',
                                    style: TextStyle(
                                      fontFamily: 'CoreSans',
                                      fontSize: 20.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Container(
                                    height: 50.0,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      color: Colors.pink[50],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '52 ',
                                        style: TextStyle(
                                          fontFamily: 'CoreSans',
                                          fontSize: 25.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'Activiy',
                                        style: TextStyle(
                                          fontFamily: 'CoreSans',
                                          fontSize: 15.0,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Container(
                            height: 180.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.pink[100],
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                              child: Container(
                                width: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Missing',
                                      style: TextStyle(
                                        fontFamily: 'CoreSans',
                                        fontSize: 20.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 110.0,
                                      child: Stack(
                                        children: [
                                          Center(
                                            child: SizedBox(
                                              height: 110.0,
                                              width: 110.0,
                                              child: CircularProgressIndicator(
                                                value: 0.25,
                                                color: Colors.white,
                                                strokeWidth: 6.0,
                                                backgroundColor: Colors.white38,
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '25%',
                                                  style: TextStyle(
                                                    fontFamily: 'CoreSans',
                                                    fontSize: 30.0,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Text(
                                                  '10/35',
                                                  style: TextStyle(
                                                    fontFamily: 'CoreSans',
                                                    fontSize: 15.0,
                                                    color: Colors.white54,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: 180.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.pink[400],
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                              child: Container(
                                width: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Complete',
                                      style: TextStyle(
                                        fontFamily: 'CoreSans',
                                        fontSize: 20.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 110.0,
                                      child: Stack(
                                        children: [
                                          Center(
                                            child: SizedBox(
                                              height: 110.0,
                                              width: 110.0,
                                              child: CircularProgressIndicator(
                                                value: 0.75,
                                                color: Colors.white,
                                                strokeWidth: 6.0,
                                                backgroundColor: Colors.white38,
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '75%',
                                                  style: TextStyle(
                                                    fontFamily: 'CoreSans',
                                                    fontSize: 30.0,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Text(
                                                  '24/35',
                                                  style: TextStyle(
                                                    fontFamily: 'CoreSans',
                                                    fontSize: 15.0,
                                                    color: Colors.white54,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Container(
                            height: 160.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'On Time',
                                    style: TextStyle(
                                      fontFamily: 'CoreSans',
                                      fontSize: 20.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Container(
                                    height: 50.0,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      color: Colors.indigo[50],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '35 ',
                                        style: TextStyle(
                                          fontFamily: 'CoreSans',
                                          fontSize: 25.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'Activiy',
                                        style: TextStyle(
                                          fontFamily: 'CoreSans',
                                          fontSize: 15.0,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Container(
                  height: 210.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.indigo[400],
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Results Activity',
                              style: TextStyle(
                                fontFamily: 'CoreSans',
                                fontSize: 20.0,
                                color: Colors.white,
                                letterSpacing: 1,
                              ),
                            ),
                            DropdownButton<String>(
                              value: dropValue,
                              icon: Icon(
                                Icons.arrow_drop_down,
                                color: Colors.white,
                              ),
                              dropdownColor: Colors.black,
                              style: TextStyle(color: Colors.white54),
                              onChanged: (String newValue) {
                                setState(() {
                                  dropValue = newValue;
                                });
                              },
                              items: <String>['Weekly', 'Monthly', 'Yearly']
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            )
                          ],
                        ),
                        Container(
                          height: 120.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.white54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
