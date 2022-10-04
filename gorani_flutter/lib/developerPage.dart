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
  var _status = false;

  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Container(),
          title: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(height: 10), //title에 해당하는 내용을 갖고 있음.
                Text(
                  '시스템 설정',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 23),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      body: SafeArea(
        //개발자의 모든 정보를 담고 있는 Container
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                  width: width * 0.9,
                  height: height * 0.17,
                  decoration: BoxDecoration(
                      color: Color(0xffECECEC),
                      borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Row(children: <Widget>[
                    Container(
                      //대표 이미지를 담은 Container
                        width: 135,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('알림',
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 7,
                                        offset: Offset(0, 3),
                                      )
                                    ],
                                    fontFamily: 'Quantico',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0)),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text('진동',
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 7,
                                        offset: Offset(0, 3),
                                      )
                                    ],
                                    fontFamily: 'Quantico',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0)),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text('매너모드',
                                style: TextStyle(
                                    shadows: [
                                      Shadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 7,
                                        offset: Offset(0, 3),
                                      )
                                    ],
                                    fontFamily: 'Quantico',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0)),
                          ],
                        )),
                    Container(
                      //이름, 학번, e-mail 관련 정보를 담은 Container
                      child: Column(
                        children: <Widget>[
                          Switch(
                              value: _status,
                              onChanged: (value) {
                                setState(() {
                                  _status = value;
                                });
                              }),
                          Switch(
                              value: _status,
                              onChanged: (value) {
                                setState(() {
                                  _status = value;
                                });
                              }),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add_circle_outline),
                            iconSize: 30,
                          ),
                        ],
                      ),
                    )
                  ])),
              Divider(
                thickness: 0.5,
                color: Colors.grey,
              ),
              Container(
                margin: const EdgeInsets.only(right: 275, bottom: 10),
                child: Text(
                  '개발자',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 23),
                ),
              ),
              Container(
                //개발자의 정보를 담은 Container
                  width: width * 1,
                  height: height * 0.16,
                  decoration: BoxDecoration(
                    color: Color(0xffECECEC),
                  ),
                  child: Row(children: <Widget>[
                    Container(
                      //대표 이미지를 담은 Container
                        width: 135,
                        child: Image.asset('image/다은 미모티콘.png')),
                    Container(
                      //이름, 학번, e-mail 관련 정보를 담은 Container
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('김 다 은 Kim Da Eun',
                              style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      color: Colors.grey.withOpacity(1),
                                      blurRadius: 7,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                  fontFamily: 'Quantico',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23.0)),
                          Text('\n컴퓨터공학부 20191101',
                              style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      blurRadius: 7,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                  fontFamily: 'Quantico',
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff5C5C5C),
                                  fontSize: 13.0)),
                          Text('Email : 20191101@vision.hoseo.edu',
                              style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      blurRadius: 7,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                  fontFamily: 'Quantico',
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff5C5C5C),
                                  fontSize: 13.0)),
                        ],
                      ),
                    )
                  ])),
              Container(
                //개발자의 모든 정보를 담고 있는 Container
                  width: width * 1,
                  height: height * 0.16,
                  decoration: BoxDecoration(
                    color: Color(0xffECECEC),
                  ),
                  child: Row(children: <Widget>[
                    Container(
                      //대표 이미지를 담은 Container
                        width: 135,
                        child: Image.asset('image/민성 미모티콘.png')),
                    Container(
                      //이름, 학번, e-mail 관련 정보를 담은 Container
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('정 민 성 Jung Min Sung',
                              style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      color: Colors.grey.withOpacity(1),
                                      blurRadius: 7,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                  fontFamily: 'Quantico',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22.5)),
                          Text('\n컴퓨터공학부 20191251',
                              style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      blurRadius: 7,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                  fontFamily: 'Quantico',
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff5C5C5C),
                                  fontSize: 13.0)),
                          Text('Email : 20191251@vision.hoseo.edu',
                              style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      blurRadius: 7,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                  fontFamily: 'Quantico',
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff5C5C5C),
                                  fontSize: 13.0)),
                        ],
                      ),
                    )
                  ])),
              Container(
                //개발자의 모든 정보를 담고 있는 Container
                  width: width * 1,
                  height: height * 0.16,
                  decoration: BoxDecoration(
                    color: Color(0xffECECEC),
                  ),
                  child: Row(children: <Widget>[
                    Container(
                      //대표 이미지를 담은 Container
                        width: 135,
                        child: Image.asset('image/채린 미모티콘.png')),
                    Container(
                      //이름, 학번, e-mail 관련 정보를 담은 Container
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('임 재 성 Im Jae sung',
                              style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      color: Colors.grey.withOpacity(1),
                                      blurRadius: 7,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                  fontFamily: 'Quantico',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23.0)),
                          Text('\n컴퓨터공학부 20191239',
                              style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      blurRadius: 7,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                  fontFamily: 'Quantico',
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff5C5C5C),
                                  fontSize: 13.0)),
                          Text('Email : 20191239@vision.hoseo.edu',
                              style: TextStyle(
                                  shadows: [
                                    Shadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      blurRadius: 7,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                  fontFamily: 'Quantico',
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff5C5C5C),
                                  fontSize: 13.0)),
                        ],
                      ),
                    )
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}