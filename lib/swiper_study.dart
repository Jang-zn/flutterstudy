import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';


void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Swiper Demo",
      theme : ThemeData.dark(),
      home: const DemoHome(title : "Swiper Demo"),
    );
  }
}

class DemoHome extends StatefulWidget {

  const DemoHome({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _DemoHomeState createState() => _DemoHomeState();
}

class _DemoHomeState extends State<DemoHome> {
  List<String> imgList = [
    "https://wishbeen-seoul.s3.ap-northeast-2.amazonaws.com/plan/1450336427659_eiffel-tower-905039_1280.jpg",
    "https://t1.daumcdn.net/thumb/R720x0/?fname=http://t1.daumcdn.net/brunch/service/user/3zNv/image/rUTINRGyDOvLxIG0Df5H17GRD7M.jpg",
    "https://d2uh4olaxaj5eq.cloudfront.net/fit-in/0x1080/e1585e4d-5a4f-4a1c-bacb-1c42eb6de071.jpg",
    "http://tourimage.interpark.com/BBS/Tour/FckUpload/201811/6367849923605289616.png",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text(widget.title),
      ),
      body: Column(
        children : [
          Container(
            color:Colors.black,
            height:250,
            padding:EdgeInsets.all(15),
            child : Swiper(
              control : SwiperControl(),
              pagination: SwiperPagination(),
              itemCount: imgList.length,
              itemBuilder: (ctx, idx){
                return Image.network(imgList[idx]);
              },
              autoplay: true,
              scale:0.9,
              viewportFraction: 0.6,
            )
          ),
          Container(),
        ]
      ),
    );
  }
}

