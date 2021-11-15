import 'package:flutter/material.dart';

void main() {
  runApp(basicApp());
}

class basicApp extends StatelessWidget {
  const basicApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "study",
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: BasicAppHome(
          title: "study Basic Widget",
        ));
  }
}

class BasicAppHome extends StatefulWidget {
  const BasicAppHome({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _BasicAppHomeState createState() => _BasicAppHomeState();
}

class EmptyAppBar extends StatelessWidget implements PreferredSizeWidget{
  const EmptyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  Size get preferredSize => Size(0.0, 0.0);
}



class _BasicAppHomeState extends State<BasicAppHome> {
  int _index=0;
  Color _color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : EmptyAppBar(),
      body: LayoutBuilder(builder: (context, constraints) {
        return Container(
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            color: Colors.greenAccent,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround, //세로배치
                crossAxisAlignment: CrossAxisAlignment.center, //가로배치
                children: <Widget>[
                  InkWell(child : Container(
                    color: _color,
                    width: 50,
                    height: 50,
                  ),
                    onTap :(){
                    setState(() {
                      _color = Colors.black;
                    });
                    }
                  ),
                  Container(
                    color: Colors.yellow,
                    width: 50,
                    height: 50,
                  ),
                  Container(
                    color: Colors.blue,
                    width: 50,
                    height: 50,
                  ),
                ]));
      }),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: "예약"),
        BottomNavigationBarItem(icon: Icon(Icons.star), label : "즐겨찾기"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label:"마이페이지")
      ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (idx){
          setState(() {
            _index = idx;
            print(idx);
          });
        },
        currentIndex : _index,
      ),
    );
  }
}
