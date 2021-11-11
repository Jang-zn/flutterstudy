import 'package:flutter/material.dart'; //auto import 기능 있을거같은데..

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget { //stateless 위젯
  @override
  Widget build(BuildContext context) {//ui 제작
    return MaterialApp(//구글 기본 디자인 (Material design)
      title : 'Flutter Demo', //타이틀 명 지정
      theme : ThemeData(primarySwatch: Colors.cyan), //material design 테마 색상
      home : MyHomePage(title : 'Flutter Demo Home page') //메인페이지 지정
    );
  }
}


class MyHomePage extends StatefulWidget { //stateful 위젯
  final String title; //필드변수로 타이틀

  MyHomePage({Key? key, required this.title}) : super(key: key); //생성자, 이니셜라이저같은데..?

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> { //MyHomePage State 업데이트용 클래스
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title : Text(widget.title),),
    );
  }
}

