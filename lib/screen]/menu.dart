import 'package:flutter/material.dart';
import 'package:papapa/four/main_fourfour.dart';
import 'package:papapa/one/main_oneone.dart';
import 'package:papapa/screen%5D/home.dart';
import 'package:papapa/three/main_threethree.dart';
import 'package:papapa/two/main_twotwo.dart';



class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  
  Widget oneButton() {
    return OutlineButton(
        borderSide: BorderSide(
            color: Colors.blue, width: 3.1, style: BorderStyle.solid),
        child: Text(
          'เว็ปเพจจำนวนตัวเลขของค่าฝุ่น',
          style: TextStyle(fontSize: 15.5,color: Colors.white,
            fontWeight: FontWeight.bold,),
        ),
        onPressed: () {
          Route route = MaterialPageRoute(builder: (context) => MainONEONE());
          Navigator.push(context, route);
        });
  }

  Widget twoButton() {
    return OutlineButton(
        borderSide: BorderSide(
            color: Colors.greenAccent, width: 3.1, style: BorderStyle.solid),
        child: Text(
          'เว็ปเพจเเสดงจำนวนของผู้ติดเชื้อไวรัส covid-19',
          style: TextStyle(fontSize: 15.5,color: Colors.white,
            fontWeight: FontWeight.bold,),
        ),
        onPressed: () {
          Route route = MaterialPageRoute(builder: (context) => MainTWOTWO());
          Navigator.push(context, route);
        });
  }

  Widget threeButton() {
    return OutlineButton(
        borderSide: BorderSide(
            color: Colors.redAccent, width: 3.1, style: BorderStyle.solid),
        child: Text(
          'เว็ปเพจพยากรณ์อากาศ',
          style: TextStyle(fontSize: 15.5,color: Colors.white,
            fontWeight: FontWeight.bold,),
        ),
        onPressed: () {
          Route route =
              MaterialPageRoute(builder: (context) => MainTHREETHREE());
          Navigator.push(context, route);
        });
  }

  Widget fourButton() {
    return OutlineButton(
        borderSide: BorderSide(
            color: Colors.purpleAccent, width: 3.1, style: BorderStyle.solid),
        child: Text(
          'การรวมเว็บเพจ',
          style: TextStyle(fontSize: 15.5,color: Colors.white,
            fontWeight: FontWeight.bold,),
        ),
        onPressed: () {
          Route route = MaterialPageRoute(builder: (context) => MainFOURFOUR());
          Navigator.push(context, route);
        });
  } 

  Widget fiveButton() {
    return OutlineButton(
        borderSide: BorderSide(
            color: Colors.yellow, width: 3.1, style: BorderStyle.solid),
        child: Text(
          'ย้อนกลับ',
          style: TextStyle(fontSize: 15.5,color: Colors.white,
            fontWeight: FontWeight.bold,),
        ),
        onPressed: () {
          Route route = MaterialPageRoute(builder: (context) => Home());
          Navigator.push(context, route);
        });
  }

  Widget showBotton() {
    return Column(
      mainAxisSize: MainAxisSize.max,mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 70.0,
        ),
        oneButton(),
        SizedBox(
          height: 50.0,
        ),
        twoButton(),
        SizedBox(
          height: 50.0,
        ),
        threeButton(),
        SizedBox(
          height: 50.0,
        ),
        fourButton(),
        SizedBox(
          height: 50.0,
        ),
        fiveButton(),
        SizedBox(
          height: 70.0,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
       decoration: BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Colors.blue, Colors.pink])
  ),
        child: Center(
          child: ListView(
            children: [
              showBotton(),
            ],
          ),
        ),
      ),
    ));
  }
}
