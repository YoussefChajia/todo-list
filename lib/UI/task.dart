import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_tags/flutter_tags.dart';

class Task extends StatefulWidget {
  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  bool isSwitched = false;
  DateTime date = new DateTime.now();
  TimeOfDay time = new TimeOfDay.now();

  List _items = ['Study', 'Productive'];
  final GlobalKey<TagsState> _tagStateKey = GlobalKey<TagsState>();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: date,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != date)
      setState(() {
        date = picked;
      });
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay picked = await showTimePicker(context: context, initialTime: time);
    if (picked != null && picked != time)
      setState(() {
        time = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    bool keyboardIsOpened = MediaQuery.of(context).viewInsets.bottom != 0.0;

    return Scaffold(
      backgroundColor: Colors.orange[50],
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: ListView(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  ClipPath(
                    clipper: RedCircle(),
                    child: Container(
                      height: 200.0,
                      decoration: BoxDecoration(
                        color: Colors.pink[400],
                      ),
                    ),
                  ),
                  ClipPath(
                    clipper: BlueCircle(),
                    child: Container(
                      height: 200.0,
                      decoration: BoxDecoration(
                        color: Colors.blue[900],
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7.0, vertical: 20.0),
                        child: IconButton(
                          icon: Icon(Icons.arrow_back),
                          color: Colors.black,
                          iconSize: 27.0,
                          onPressed: () => Navigator.pop(context),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Create',
                                style: TextStyle(
                                  fontFamily: 'CoreSans',
                                  fontSize: 30.0,
                                  color: Colors.black,
                                )),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text('New Task',
                                style: TextStyle(
                                  fontFamily: 'CoreSans',
                                  fontSize: 30.0,
                                  color: Colors.black,
                                )),
                            SizedBox(
                              height: 25.0,
                            ),
                            Text('Name',
                                style: TextStyle(
                                  fontFamily: 'CoreSans',
                                  fontSize: 15.0,
                                  color: Colors.grey,
                                )),
                            SizedBox(
                              height: 5.0,
                            ),
                            TextField(
                                decoration: InputDecoration(hintText: 'Task Name'),
                                style: TextStyle(
                                  fontFamily: 'CoreSans',
                                  fontSize: 20.0,
                                  color: Colors.black,
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Container(
                  height: 550.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20), topLeft: Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Date',
                                style: TextStyle(
                                  fontFamily: 'CoreSans',
                                  fontSize: 15.0,
                                  color: Colors.grey,
                                )),
                            GestureDetector(
                                onTap: () => _selectDate(context),
                                child: AbsorbPointer(
                                  child: TextField(
                                      decoration: InputDecoration(
                                          hintText: DateFormat('EEEE').format(date).toString() +
                                              ' ' +
                                              date.day.toString() +
                                              ', ' +
                                              DateFormat('MMMM').format(date).toString(),
                                          suffixIcon: Icon(Icons.date_range)),
                                      style: TextStyle(
                                        fontFamily: 'CoreSans',
                                        fontSize: 20.0,
                                        color: Colors.black,
                                      )),
                                )),
                            SizedBox(height: 30.0),
                            Text('Starting Time',
                                style: TextStyle(
                                  fontFamily: 'CoreSans',
                                  fontSize: 15.0,
                                  color: Colors.grey,
                                )),
                            GestureDetector(
                                onTap: () => _selectTime(context),
                                child: AbsorbPointer(
                                  child: TextField(
                                      decoration: InputDecoration(
                                          hintText:
                                              time.hour.toString() + ' : ' + time.minute.toString(),
                                          suffixIcon: Icon(Icons.timer)),
                                      style: TextStyle(
                                        fontFamily: 'CoreSans',
                                        fontSize: 20.0,
                                        color: Colors.black,
                                      )),
                                )),
                            SizedBox(height: 30.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      height: 50.0,
                                      width: 50.0,
                                      child: Icon(
                                        Icons.alarm,
                                        color: Colors.blue[900],
                                        size: 25.0,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15.0),
                                        color: Colors.blue[50],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text('Remind Me',
                                            style: TextStyle(
                                              fontFamily: 'CoreSans',
                                              fontSize: 20.0,
                                              letterSpacing: 0.6,
                                              color: Colors.black,
                                            )),
                                      ],
                                    )
                                  ],
                                ),
                                Switch(
                                  value: isSwitched,
                                  onChanged: (value) {
                                    setState(() {
                                      isSwitched = value;
                                      print(isSwitched);
                                    });
                                  },
                                  activeTrackColor: Colors.blue[900],
                                  activeColor: Colors.white,
                                ),
                              ],
                            ),
                            SizedBox(height: 30.0),
                            Text('Category',
                                style: TextStyle(
                                  fontFamily: 'CoreSans',
                                  fontSize: 15.0,
                                  color: Colors.grey,
                                )),
                            SizedBox(height: 15.0),
                            Tags(
                              key: _tagStateKey,
                              alignment: WrapAlignment.start,
                              textField: TagsTextField(
                                autofocus: false,
                                textStyle: TextStyle(
                                  fontFamily: 'CoreSans',
                                  fontSize: 20.0,
                                  color: Colors.black,
                                ),
                                constraintSuggestion: true,
                                onSubmitted: (String str) {
                                  setState(() {
                                    _items.add(str);
                                  });
                                },
                              ),
                              itemCount: _items.length,
                              itemBuilder: (int index) {
                                final item = _items[index];
                                return ItemTags(
                                  key: Key(index.toString()),
                                  index: index,
                                  title: item.toString(),
                                  textStyle: TextStyle(
                                    fontFamily: 'CoreSans',
                                    fontSize: 16.0,
                                    color: Colors.black,
                                  ),
                                  combine: ItemTagsCombine.withTextBefore,
                                  activeColor: Colors.blue[50],
                                  elevation: 0,
                                  textActiveColor: Colors.blue[900],
                                  padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                                  removeButton: ItemTagsRemoveButton(
                                    onRemoved: () {
                                      setState(() {
                                        _items.removeAt(index);
                                      });
                                      return true;
                                    },
                                  ),
                                  onPressed: (item) => print(item),
                                  onLongPressed: (item) => print(item),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: keyboardIsOpened
          ? null
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                height: 60.0,
                width: double.infinity,
                child: FloatingActionButton.extended(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  backgroundColor: Colors.blue[900],
                  onPressed: () => Navigator.pop(context),
                  label: Text(
                    'Create Task',
                    style: TextStyle(
                      fontFamily: 'CoreSans',
                      fontSize: 20.0,
                      letterSpacing: 0.4,
                      color: Colors.white,
                    ),
                  ),
                  icon: Container(
                    height: 35.0,
                    width: 35.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.indigo[400],
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 18.0,
                    ),
                  ),
                ),
              ),
            ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class BlueCircle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.moveTo(size.width / 2 + 70, 0);
    path.quadraticBezierTo(size.width / 2 + 20, 5 * size.height / 6, size.width, size.height);
    path.lineTo(size.width, 0);

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

    path.moveTo(size.width / 3, 0);
    path.quadraticBezierTo(2 * size.width / 3, size.height, size.width, size.height / 4);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
