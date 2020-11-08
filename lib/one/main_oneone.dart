import 'package:flutter/material.dart';
import 'package:papapa/four/main_fourfour.dart';
import 'package:papapa/one/lesson_othree.dart';
import 'package:papapa/one/lesson_otwo.dart';
import 'package:papapa/screen%5D/dev.dart';
import 'package:papapa/screen%5D/home.dart';
import 'package:papapa/screen%5D/menu.dart';
import 'package:papapa/two/main_twotwo.dart';
import 'lesson_oone.dart';
import 'package:url_launcher/url_launcher.dart';

class MainONEONE extends StatefulWidget {
  @override
  _MainONEONEState createState() => _MainONEONEState();
}

class _MainONEONEState extends State<MainONEONE> {
  Widget currentWidget = MainONEONE();
  Widget gOHOME() {
    return ListTile(
      leading: Icon(
        Icons.home,
        size: 36.0,
        color: Colors.blue[400],
      ),
      title: Text(
        'หน้าเเรก',
      ),
      subtitle: Text(''),
      onTap: () {
        setState(() {
          currentWidget = Home();
        });
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home()));
      },
    );
  }

  Widget gOMENU() {
    return ListTile(
      leading: Icon(
        Icons.list,
        size: 36.0,
        color: Colors.black,
      ),
      title: Text('เมนู'),
      subtitle: Text('เเสดงเมนู'),
      onTap: () {
        setState(() {
          currentWidget = Menu();
        });
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Menu()));
      },
    );
  }

  Widget gOONE() {
    return ListTile(
      leading: Icon(
        Icons.list,
        size: 30.0,
        color: Colors.blueAccent[400],
      ),
      title: Text('เว็ปเพจจำนวนตัวเลขของค่าฝุ่น'),
      subtitle: Text('บทเรียนเว็ปเพจจำนวนตัวเลขของค่าฝุ่น'),
      onTap: () {
        setState(() {
          currentWidget = Menu();
        });
        Navigator.of(context).pop();
      },
    );
  }

  Widget gOTwo() {
    return ListTile(
      leading: Icon(
        Icons.list,
        size: 30.0,
        color: Colors.green[400],
      ),
      title: Text('เว็ปเพจเเสดงจำนวนตัวเลขของผู้ติดเชื้อไวรัส covid-19'),
      subtitle: Text('บทเรียนเว็ปเพจcovid-19'),
      onTap: () {
        setState(() {
          currentWidget = Menu();
        });
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MainTWOTWO()));
      },
    );
  }

  Widget gOThree() {
    return ListTile(
      leading: Icon(
        Icons.list,
        size: 30.0,
        color: Colors.red[400],
      ),
      title: Text('เว็ปเพจพยากรณ์อากาศ'),
      subtitle: Text('บทเรียนเว็ปเพจพยากรณ์อากาศ'),
      onTap: () {
        setState(() {
          currentWidget = Menu();
        });
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MainFOURFOUR()));
      },
    );
  }

  Widget gOfour() {
    return ListTile(
      leading: Icon(
        Icons.list,
        size: 30.0,
        color: Colors.purple[400],
      ),
      title: Text('การรวมเว็บเพจ'),
      subtitle: Text('บทเรียนการรวมเว็บเพจ'),
      onTap: () {
        setState(() {
          currentWidget = Menu();
        });
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MainFOURFOUR()));
      },
    );
  }

  Widget gOdev() {
    return ListTile(
      leading: Icon(
        Icons.people_outline,
        size: 25.0,
        color: Colors.pinkAccent[400],
      ),
      title: Text('ผู้จัดทำ'),
      subtitle: Text(''),
      onTap: () {
        setState(() {
          currentWidget = Menu();
        });
        Navigator.push(context, MaterialPageRoute(builder: (context) => Dev()));
      },
    );
  }

  Widget showappname1() {
    return Text('การพัฒนาสื่อวีดีทัศน์การเขียนเว็บเพจ');
  }

  Widget showappname2() {
    return Text('โดยใช้ภาษา Python');
  }

  Widget showpt() {
    return Container(
      width: 60.0,
      height: 60.0,
      child: Image.asset('images/web.png'),
    );
  }

  Widget showHead() {
    return DrawerHeader(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: <Color>[Colors.blueAccent, Colors.purple])),
      child: Column(
        children: <Widget>[
          showpt(),
          SizedBox(
            height: 30.0,
          ),
          showappname1(),
          showappname2(),
        ],
      ),
    );
  }

  Widget showDrawer() {
    return Drawer(
      child: ListView(
        children: <Widget>[
          showHead(),
          gOHOME(),
          gOMENU(),
          gOONE(),
          gOTwo(),
          gOThree(),
          gOfour(),
          gOdev()
        ],
      ),
    );
  }

  Widget lesson1OneButton() {
    return OutlineButton(
        borderSide: BorderSide(
            color: Colors.blueAccent, width: 3.1, style: BorderStyle.solid),
        child: Text(
          'บทเรียนที่ 1 Python',
         style: TextStyle(fontSize: 15.5,color: Colors.black,
            fontWeight: FontWeight.bold,),
        ),
        onPressed: () {
          Route route = MaterialPageRoute(builder: (context) => LessonOone());
          Navigator.push(context, route);
        });
  }

  Widget lesson1TwoButton() {
    return OutlineButton(
        borderSide: BorderSide(
            color: Colors.blueAccent, width: 3.1, style: BorderStyle.solid),
        child: Text(
          'บทเรียนที่ 2 HTML',
          style: TextStyle(fontSize: 15.5,color: Colors.black,
            fontWeight: FontWeight.bold,),
        ),
        onPressed: () {
          Route route = MaterialPageRoute(builder: (context) => LessonOtwo());
          Navigator.push(context, route);
        });
  }

  Widget lesson1ThreeButton() {
    return OutlineButton(
        borderSide: BorderSide(
            color: Colors.blueAccent, width: 3.1, style: BorderStyle.solid),
        child: Text(
          'บทเรียนที่ 3 วิดีโอเเสดงตัวอย่าง',
        style: TextStyle(fontSize: 15.5,color: Colors.black,
            fontWeight: FontWeight.bold,),
        ),
        onPressed: () {
          Route route = MaterialPageRoute(builder: (context) => ChewieDemo());
          Navigator.push(context, route);
        });
  }

  Widget lesson1FourButton() {
    return OutlineButton(
      borderSide: BorderSide(
          color: Colors.blueAccent, width: 3.1, style: BorderStyle.solid),
      child: Text(
        'ตัวอย่างของเว็บเพจ',
       style: TextStyle(fontSize: 15.5,color: Colors.black,
            fontWeight: FontWeight.bold,),
      ),
      onPressed: () => launch("http://154.16.11.166:2211/"),
    );
  }

  Widget lesson1FiveButton() {
    return OutlineButton(
      borderSide: BorderSide(
          color: Colors.blueAccent, width: 3.1, style: BorderStyle.solid),
      child: Text(
        'บทเรียนที่ 5',
       style: TextStyle(fontSize: 15.5,color: Colors.black),
      ),
      onPressed: () {},
    );
  }

  Widget lesson1showBotton() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        lesson1OneButton(),
        SizedBox(height: 50.0),
        lesson1TwoButton(),
        SizedBox(height: 50.0),
        lesson1ThreeButton(),
        SizedBox(height: 50.0),
        lesson1FourButton()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent[700],
        endDrawer: showDrawer(),
        appBar: AppBar(
          title: Text('บทเรียน'),
          flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: <Color>[Colors.purple, Colors.blueAccent[700]],))),shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          
        ),
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.blueAccent[700], Colors.purple])),
            child: Center(
              child: ListView(
                children: [
                  SizedBox(
                    height: 120.0,
                  ),
                  lesson1showBotton(),
                  SizedBox(
                    height: 120.0,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
