import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_app/UI/home.dart';
import 'package:todo_app/UI/stats.dart';
import 'package:todo_app/UI/task.dart';
import 'package:fluttericon/mfg_labs_icons.dart';

class Routes extends StatefulWidget {
  @override
  _RoutesState createState() => _RoutesState();
}

class _RoutesState extends State<Routes> with SingleTickerProviderStateMixin {
  var barHeight = 70.0;
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        color: Colors.red,
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            body: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                MaterialApp(
                  home: Home(),
                  debugShowCheckedModeBanner: false,
                ),
                MaterialApp(
                  home: Task(),
                  debugShowCheckedModeBanner: false,
                ),
                MaterialApp(
                  home: Stats(),
                  debugShowCheckedModeBanner: false,
                ),
              ],
            ),
            bottomNavigationBar: new TabBar(
              tabs: [
                Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: SizedBox(
                      height: barHeight,
                      child: Tab(
                          icon: new Icon(
                        MfgLabs.th_thumb_empty,
                        size: 18.5,
                      ))),
                ),
                SizedBox(
                  height: barHeight,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.indigo[400],
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(1.0, 2.0),
                          blurRadius: 4.0,
                        ),
                      ],
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Task()));
                      },
                      icon: new Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 25.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 50.0),
                  child: SizedBox(
                      height: barHeight,
                      child: Tab(
                          icon: new Icon(
                        Icons.check_circle_outline,
                        size: 25,
                      ))),
                )
              ],
              labelColor: Colors.indigo[400],
              unselectedLabelColor: Colors.blueGrey[200],
              indicatorPadding: EdgeInsets.all(5.0),
              indicatorColor: Colors.transparent,
            ),
            backgroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
