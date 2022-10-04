import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'App title',
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget{
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: IconButton(onPressed: (){}, icon: Icon(Icons.settings), color: Colors.black,)
        ),
        extendBodyBehindAppBar: false,
        body: Container(
          margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  // IconButton(onPressed: (){}, icon: Icon(Icons.settings), color: Colors.black, ),
                  // SizedBox(
                  //   height: 40,
                  // ),
                  Image.asset('image/gorani.jpg'),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(onPressed: (){},
                    child: Text("레드존 설정"),
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.red,
                        minimumSize: Size(100,60),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                          )),),
                        ],
              ),
        ),
      ),
    );
  }
}