import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(ScoreCount());
}

class ScoreCount extends StatelessWidget {
  const ScoreCount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ScoreCount",
      theme: ThemeData.dark(),
      home: ScoreCountHome(title: "Score"),
    );
  }
}

class ScoreCountHome extends StatefulWidget {
  const ScoreCountHome({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _ScoreCountHomeState createState() => _ScoreCountHomeState();
}

class EmptyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const EmptyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  Size get preferredSize => Size(0.0, 0.0);
}

int scoreA = 0;
int scoreB = 0;
String teamA = "A팀";
String teamB = "B팀";

class _ScoreCountHomeState extends State<ScoreCountHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title : Text(widget.title),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Text("종료 점수 15점"),
                  InkWell(
                      child: Text("리셋"),
                      onTap: () {
                        setState(() {
                          scoreA = 0;
                          scoreB = 0;
                        });
                      })
                ],
              ),
              Row(
                children: [
                  Text(
                    "Score Board",
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              Row(children: [
                Column(
                  children: [
                    Text("$teamA"),
                    Text("$scoreA")
                  ],
                ),
                Column(
                    children: [
                      Text("$teamB"),
                      Text("$scoreB")
                    ]
                )
              ],
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              ),
              Row(
                children : [
                    InkWell(child:Container(
                      child : Icon(Icons.add),
                    ),
                      onTap: (){
                        setState(() {
                          scoreA++;
                        });
                      },
                    ),
                  InkWell(child:Container(
                    child : Icon(Icons.remove),
                  ),
                    onTap: (){
                      setState(() {
                        if(scoreA<=0){

                        }else {
                          setState(() {
                            scoreA--;
                          });
                        }
                      });
                    },
                  ),
                  InkWell(child:Container(
                    child : Icon(Icons.add),
                  ),
                    onTap: (){
                      setState(() {
                        scoreB++;
                      });
                    },
                  ),
                  InkWell(child:Container(
                    child : Icon(Icons.remove),
                  ),
                    onTap: (){
                    if(scoreB<=0){

                    }else {
                      setState(() {
                        scoreB--;
                      });
                    }
                    },
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,

              ),
            ],
          ),
        ));
  }
}

