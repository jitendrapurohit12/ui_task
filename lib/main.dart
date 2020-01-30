import 'package:flutter/material.dart';

import 'ui/screens/screen_home.dart';

void main() => runApp(UITask());

class UITask extends StatefulWidget {
  @override
  _UITaskState createState() => _UITaskState();
}

class _UITaskState extends State<UITask> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Roboto', primaryColor: Colors.white),
      title: 'UI Task',
      home: ScreenHome(),
    );
  }
}
