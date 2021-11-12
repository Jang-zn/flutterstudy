import 'package:flutter/material.dart';


void main() {
  runApp(BasicApp1());
}


class BasicApp1 extends StatelessWidget {
  const BasicApp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title : "flutter Demo",
      theme : ThemeData(
        primarySwatch: Colors.amber,
      ),
      home : BasicHomepage1(
        title : "Flutter Demo HomePage"
    )
    );
  }
}

class BasicHomepage1 extends StatefulWidget {
  const BasicHomepage1({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _BasicHomepage1State createState() => _BasicHomepage1State();
}

class _BasicHomepage1State extends State<BasicHomepage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body : Container(
          alignment: Alignment.center,
          color : Colors.yellow,
          child : Text('22')
      )
    );
  }
}
