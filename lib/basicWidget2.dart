import 'package:flutter/material.dart';

void main(){
  runApp(basicApp());
}

class basicApp extends StatelessWidget {
  const basicApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title : "study",
      theme : ThemeData(
          primarySwatch: Colors.green,
      ),
      home : BasicAppHome(
        title : "study Basic Widget",
      )
    );
  }
}

class BasicAppHome extends StatefulWidget {
  const BasicAppHome({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _BasicAppHomeState createState() => _BasicAppHomeState();
}

class _BasicAppHomeState extends State<BasicAppHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title : Text("title"),
      ),
      body : LayoutBuilder(
          builder : (context, constraints){
            return Container(
              height : constraints.maxHeight,
              width : constraints.maxWidth,
              color : Colors.greenAccent,
              child : Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround, //세로배치
                crossAxisAlignment: CrossAxisAlignment.center, //가로배치
                children : <Widget>[
                  Container(
                    color : Colors.red,
                    width : 50,
                    height : 50,
                  ),
                  Container(
                    color : Colors.yellow,
                    width : 50,
                    height : 50,
                  ),
                  Container(
                    color : Colors.blue,
                    width : 50,
                    height : 50,
                  ),
                ]
              )
            );
          }
      )
    );
  }
}
