import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:photo_view/photo_view.dart';

class LessonTWone extends StatelessWidget {
  Widget showAppName1() {
    return Text('เว็ปเพจเเสดงผู้ติดเชื้อ',
        style: TextStyle(
          fontSize: 20.5,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        )
        //fontStyle: FontStyle.italic),
        );
  }

  Widget showAppName2() {
    return Text('ไวรัสโควิด19:PYTHON',
        style: TextStyle(
          fontSize: 20.5,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        )
        //fontStyle: FontStyle.italic),
        );
  }

  Widget showtxt() {
    return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 80.0,
        ),
        child: Card(
      color: Colors.greenAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 70,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                showAppName1(),
                showAppName2(),
                SizedBox(
                  height: .0,
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }

  Widget showLogo1() {
    return Container(
        width: 200.0,
        height: 200.0,
        child: PhotoView(
            imageProvider: AssetImage('images/2Covid19/1/1 PY Covid19.PNG')));
  }

  Widget showLogo2() {
    return Container(
        width: 200.0,
        height: 200.0,
        child: PhotoView(
            imageProvider: AssetImage('images/2Covid19/1/2 PY Covid19.PNG')));
  }

  Widget showLogo3() {
    return Container(
        width: 200.0,
        height: 200.0,
        child: PhotoView(
            imageProvider: AssetImage('images/2Covid19/1/3 PY Covid19.PNG')));
  }

  Widget showLogo4() {
    return Container(
        width: 200.0,
        height: 200.0,
        child: PhotoView(
            imageProvider: AssetImage('images/2Covid19/1/API PY Covid19.PNG')));
  }

  Widget showtxt1() {
    return Container(
      padding: EdgeInsets.all(20),
      child: RichText(
        text: TextSpan(
            text: '1. ในส่วนแรก',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.black,
            ),
            children: <TextSpan>[
              TextSpan(
                  text: '  เราจะดึงคลาสข้อมูลก่อนเพื่อให้นำมาใช้งานในโปรแกรม',
                  style: TextStyle(fontWeight: FontWeight.normal)),
              //fontStyle: FontStyle.italic),
            ]),
      ),
    );
  }

  Widget showtxt2() {
    return Container(
      padding: EdgeInsets.all(20),
      child: RichText(
        text: TextSpan(
            text: '2. ในส่วนที่สอง',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.black,
            ),
            children: <TextSpan>[
              TextSpan(
                  text:
                      ' เราจะเรียกใช้โมดูล flask เพื่อที่โปรแกรมจะใช้ร่วมกับ webserver ได้และจะกำหนดให้ส่วนของ API หรือข้อมูลสภาพอากาศที่เป็นไฟล์ json โดยจะนําข้อมูลมาจาก https://covid19.th-stat.com/api/open/today จากนั้นให้โปรแกรมแปลและอ่านค่า json และดึงมาใช้',
                  style: TextStyle(fontWeight: FontWeight.normal)),
              //fontStyle: FontStyle.italic),
            ]),
      ),
    );
  }

  Widget showtxt3() {
    return Container(
      padding: EdgeInsets.all(20),
      child: RichText(
        text: TextSpan(
            text: '3. ในส่วนที่สาม',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.black,
            ),
            children: <TextSpan>[
              TextSpan(
                  text:
                      ' เราจะเรียกใช้ data ที่แปลจาก json มาใช้ ดังนี้และให้โปรแกรมแสดงผล data ผ่าน Covid.html โดยนำ data ไปแสดงแล้ว ในส่วนบรรทัดสุดท้ายเป็นการทำให้โปรแกรมสามารถรันต่อไปได้โดยถ้าข้อมูลถูกต้องจะแสดงผลเรื่อยแต่ถ้าไม่โปรแกรมจะ error และสิ้นสุดทันที',
                  style: TextStyle(fontWeight: FontWeight.normal)),
              //fontStyle: FontStyle.italic),
            ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('บทเรียนที่ 1'),
        backgroundColor: Colors.greenAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          
          showtxt(),
          SizedBox(
            height: 30.0,
          ),
          showLogo1(),
          showtxt1(),
          SizedBox(
            height: 30.0,
          ),
          showLogo2(),
          showtxt2(),
          SizedBox(
            height: 30.0,
          ),
          showLogo4(),
          SizedBox(
            height: 30.0,
          ),
          showLogo3(),
          showtxt3(),
          SizedBox(
            height: 30.0,
          ),
          SizedBox(
            height: 50.0,
          ),
        ],
      ),
    );
  }
}
