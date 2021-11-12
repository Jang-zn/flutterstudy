import 'package:flutter/material.dart'; //auto import 기능 있을거같은데..
import 'basicWidget.dart';


//---------------Main method------------------------
void main() {
  runApp(MyApp());
}
//--------------------------------1. 실행될 앱 정의(class)-------------------------------
class MyApp extends StatelessWidget {
  //stateless 위젯
  @override
  Widget build(BuildContext context) {
    //ui 제작..틀? 호출, 반환
    return MaterialApp(
        //구글 기본 디자인 (Material design)
        title: 'Flutter Demo', //타이틀 명 지정
        theme: ThemeData(primarySwatch: Colors.cyan), //material design 테마 색상
//----------------------2. MyApp 실행 후 보여질 화면(메인페이지)------------------------------
        home: MyHomePage(title: 'Flutter Demo Home page') //메인페이지 지정
        );
  }
}


//----------------------3. 메인페이지 구성(stateful)--------------------------------------
class MyHomePage extends StatefulWidget {
  //stateful 위젯
  final String title; //필드변수로 타이틀
  MyHomePage({Key? key, required this.title})
      : super(key: key); //생성자, 이니셜라이저같은데..?

  @override
  _MyHomePageState createState() => _MyHomePageState(); //아래에 구현한 State class 불러옴
}

class _MyHomePageState extends State<MyHomePage> {
  int _count =0;
  //MyHomePage State 업데이트용 클래스 -> stateful 위젯 만들면 같이 포맷에 딸려서 생김 항상 한쌍
  @override
  Widget build(BuildContext context) {
    return Scaffold( //기본적인 틀 구현에 쓰임
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('You have pushed the button this many times'),
                Text("$_count",style: Theme.of(context).textTheme.headline4,),//필드변수 _count 호출해서 갖다씀
              ],
        )
        ),
      floatingActionButton : FloatingActionButton(
        onPressed : _incrementCounter, //FloatingActionButton press 했을시 호출할 함수명
        tooltip : "increment",
        child : Icon(Icons.add),
      ),
    );
  }
  void _incrementCounter(){
    setState(() {
      _count++;
    });
  }
}
