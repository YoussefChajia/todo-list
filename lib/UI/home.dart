import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int count = 2;
  final tasks = ['Do the homework', 'Have launch', 'Make cake', 'Call friend'];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Stack(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 200.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.orange[50],
                        ),
                      ),
                      ClipPath(
                        clipper: PinkCircle(),
                        child: Container(
                          height: 200.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.pink[200],
                          ),
                        ),
                      ),
                      ClipPath(
                        clipper: RedCircle(),
                        child: Container(
                          height: 200.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.pink[400],
                          ),
                        ),
                      ),
                      ClipPath(
                        clipper: BlueCircle(),
                        child: Container(
                          height: 200.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.blue[900],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 0.0),
                    child: Container(
                      height: 170.0,
                      child: ListView(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                                size: 16.0,
                              ),
                              Text('Tuesday 25, Dec',
                                  style: TextStyle(
                                    fontFamily: 'CoreSans',
                                    fontSize: 22.0,
                                    color: Colors.white,
                                  )),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 16.0,
                              ),
                            ],
                          ),
                          SizedBox(height: 27.0),
                          Table(
                            children: [
                              TableRow(children: [
                                Column(children: [
                                  Text('S',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.white,
                                      )),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                                    child: Container(
                                      height: 45.0,
                                      width: 40.0,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10.0),
                                          color: Colors.white.withOpacity(0.3)),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text('23',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 15.0,
                                                color: Colors.white,
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Container(
                                              height: 5.0,
                                              width: 5.0,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(30.0),
                                                  color: Colors.orange[300]),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ]),
                                Column(children: [
                                  Text('M',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.white,
                                      )),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                                    child: Container(
                                      height: 45.0,
                                      width: 40.0,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10.0),
                                          color: Colors.white.withOpacity(0.3)),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text('24',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 15.0,
                                                color: Colors.white,
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Container(
                                              height: 5.0,
                                              width: 5.0,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ]),
                                Column(children: [
                                  Text('T',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.white,
                                      )),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                                    child: Container(
                                      height: 45.0,
                                      width: 40.0,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10.0),
                                          color: Colors.white.withOpacity(0.3)),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text('25',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 15.0,
                                                color: Colors.white,
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Container(
                                              height: 5.0,
                                              width: 5.0,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(30.0),
                                                  color: Colors.orange[300]),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ]),
                                Column(children: [
                                  Text('W',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.white,
                                      )),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                                    child: Container(
                                      height: 45.0,
                                      width: 40.0,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10.0),
                                          color: Colors.white.withOpacity(0.3)),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text('26',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 15.0,
                                                color: Colors.white,
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Container(
                                              height: 5.0,
                                              width: 5.0,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(30.0),
                                                  color: Colors.orange[300]),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ]),
                                Column(children: [
                                  Text('T',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.white,
                                      )),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                                    child: Container(
                                      height: 45.0,
                                      width: 40.0,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10.0),
                                          color: Colors.white.withOpacity(0.3)),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text('27',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 15.0,
                                                color: Colors.white,
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Container(
                                              height: 5.0,
                                              width: 5.0,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ]),
                                Column(children: [
                                  Text('F',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.white,
                                      )),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                                    child: Container(
                                      height: 45.0,
                                      width: 40.0,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10.0),
                                          color: Colors.white.withOpacity(0.3)),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text('28',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 15.0,
                                                color: Colors.white,
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Container(
                                              height: 5.0,
                                              width: 5.0,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ]),
                                Column(children: [
                                  Text('S',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.white,
                                      )),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                                    child: Container(
                                      height: 45.0,
                                      width: 40.0,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10.0),
                                          color: Colors.white.withOpacity(0.3)),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text('29',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 15.0,
                                                color: Colors.white,
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Container(
                                              height: 5.0,
                                              width: 5.0,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(30.0),
                                                  color: Colors.orange[300]),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ]),
                              ]),
                            ],
                          ),
                          SizedBox(height: 4.0),
                          Column(
                            children: <Widget>[
                              Icon(
                                Icons.arrow_drop_down,
                                color: Colors.white,
                                size: 35.0,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text('Today',
                  style: TextStyle(
                    fontFamily: 'CoreSans',
                    fontSize: 25.0,
                    letterSpacing: 0.2,
                    color: Colors.black,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: Container(
                height: count * 90.0,
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 5.0),
                      child: Container(
                        height: 80.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0), color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: 50.0,
                                    width: 50.0,
                                    child: Icon(
                                      Icons.free_breakfast,
                                      color: Colors.pink[400],
                                      size: 25.0,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0),
                                      color: Colors.pink[50],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('Eat Breakfast',
                                          style: TextStyle(
                                            fontFamily: 'CoreSans',
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 0.6,
                                            color: Colors.black,
                                          )),
                                      SizedBox(
                                        height: 8.0,
                                      ),
                                      Text('Dec 25, 08:00',
                                          style: TextStyle(
                                            fontFamily: 'CoreSans',
                                            fontSize: 12.0,
                                            letterSpacing: 0.3,
                                            color: Colors.black,
                                          ))
                                    ],
                                  )
                                ],
                              ),
                              IconButton(
                                  icon: Icon(
                                    Icons.more_horiz,
                                    color: Colors.grey[400],
                                  ),
                                  onPressed: null),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 5.0),
                      child: Container(
                        height: 80.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0), color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: 50.0,
                                    width: 50.0,
                                    child: Icon(
                                      Icons.book,
                                      color: Colors.pink[400],
                                      size: 25.0,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0),
                                      color: Colors.pink[50],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('Read a Book',
                                          style: TextStyle(
                                            fontFamily: 'CoreSans',
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 0.6,
                                            color: Colors.black,
                                          )),
                                      SizedBox(
                                        height: 8.0,
                                      ),
                                      Text('Dec 25, 09:00',
                                          style: TextStyle(
                                            fontFamily: 'CoreSans',
                                            fontSize: 12.0,
                                            letterSpacing: 0.3,
                                            color: Colors.black,
                                          ))
                                    ],
                                  )
                                ],
                              ),
                              IconButton(
                                  icon: Icon(
                                    Icons.more_horiz,
                                    color: Colors.grey[400],
                                  ),
                                  onPressed: null),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text('Tomorrow',
                  style: TextStyle(
                    fontFamily: 'CoreSans',
                    fontSize: 25.0,
                    letterSpacing: 0.2,
                    color: Colors.black,
                  )),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20.0),
              height: 190.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tasks.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                      width: 140.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0), color: Colors.indigo[300]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                        child: Text(
                          tasks[index],
                          style: TextStyle(
                            fontFamily: 'CoreSans',
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.6,
                            height: 1.3,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BlueCircle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.moveTo(50, 0);
    path.quadraticBezierTo(size.width / 2, size.height / 2, 100, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class RedCircle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.moveTo(0, size.height / 2);
    path.quadraticBezierTo(size.width / 4, 0, size.width, size.height / 1.5);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class PinkCircle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.moveTo(size.width, 40);
    path.quadraticBezierTo(size.width / 2, size.height, 0, size.height / 2);
    path.lineTo(0, 0);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
