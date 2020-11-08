import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:flutter/cupertino.dart';

class LessonOone extends StatelessWidget {
  Widget showAppName1() {
    return Text('เว็ปเพจจำนวนตัวเลข',
        style: TextStyle(
          fontSize: 20.5,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        )
        //fontStyle: FontStyle.italic),
        );
  }

  Widget showAppName2() {
    return Text('ของค่าฝุ่น:PYTHON',
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
          color: Colors.blueAccent,
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
                  children: <Widget>[showAppName1(), showAppName2()],
                ),
              ),
            ],
          ),
        ));
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
                  text: ' เราจะดึงคลาสข้อมูลก่อนเพื่อให้นำมาใช้งานในโปรแกรม',
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
                text: '2. ในส่วนที่สอง ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.black,
                ),
                children: <TextSpan>[
              TextSpan(
                  text:
                      'เราจะเรียกใช้โมดูล flask เพื่อที่โปรแกรมจะใช้ร่วมกับ webserver ได้และจะกำหนด API หรือชุดของข้อมูลค่าฝุ่นที่เป็นไฟล์ json โดยในส่วนนี้นําข้อมูลมาจาก http://air4thai.pcd.go.th/services/getNewAQI_JSON.php?region=2 จากนั้นให้โปรแกรมแปลและอ่านค่า json และดึงมาใช้',
                  style: TextStyle(fontWeight: FontWeight.normal)),
              //fontStyle: FontStyle.italic),
            ])));
  }

  Widget showtxt3() {
    return Container(
        padding: EdgeInsets.all(20),
        child: RichText(
            text: TextSpan(
                text: '3. ในส่วนที่สาม ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.black,
                ),
                children: <TextSpan>[
              TextSpan(
                  text:
                      'เราจะเรียกใช้ data ที่แปลจาก json มาใช้ ดังนี้และให้โปรแกรมแสดงผลdataผ่าน index.htmlโดยนำ data ไปแสดงแล้วในส่วนบรรทัดสุดท้ายเป็นการทำให้โปรแกรมรันต่อไปได้ โดยถ้าข้อมูลถูกต้อง จะแสดงผลเรื่อยแต่ถ้าไม่โปรแกรมจะ error และสิ้นสุดทันที',
                  style: TextStyle(fontWeight: FontWeight.normal)),
              //fontStyle: FontStyle.italic),
            ])));
  }

  Widget showLogo1() {
    return Container(
        width: 200.0,
        height: 200.0,
        child: PhotoView(imageProvider: AssetImage('images/1PM25/1/1PY.PNG')));
  }

  Widget showLogo2() {
    return Container(
        width: 200.0,
        height: 200.0,
        child: PhotoView(imageProvider: AssetImage('images/1PM25/1/2PY.PNG')));
  }

  Widget showLogo3() {
    return Container(
        width: 200.0,
        height: 200.0,
        child: PhotoView(imageProvider: AssetImage('images/1PM25/1/3PY.PNG')));
  }

  Widget showLogo4() {
    return Container(
        width: 200.0,
        height: 200.0,
        child: PhotoView(imageProvider: AssetImage('images/1PM25/1/API.PNG')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('บทเรียนที่ 1'),
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
