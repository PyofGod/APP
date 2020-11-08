import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:photo_view/photo_view.dart';

class LessonTHRone extends StatelessWidget {
  Widget showtxt() {
    return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 40.0,
        ),
        child: Card(
          color: Colors.redAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('เว็บเพจพยากรณ์อากาศ:PYTHON',
                        style: TextStyle(
                          fontSize: 20.5,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      height: 50.0,
                    )
                    //fontStyle: FontStyle.italic),
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
        child:
            PhotoView(imageProvider: AssetImage('images/3Weather/1/1 PY.PNG')));
  }

  Widget showLogo2() {
    return Container(
        width: 200.0,
        height: 200.0,
        child:
            PhotoView(imageProvider: AssetImage('images/3Weather/1/2 PY.PNG')));
  }

  Widget showLogo3() {
    return Container(
        width: 200.0,
        height: 200.0,
        child:
            PhotoView(imageProvider: AssetImage('images/3Weather/1/3 PY.PNG')));
  }

  Widget showLogo4() {
    return Container(
        width: 200.0,
        height: 200.0,
        child: PhotoView(
            imageProvider: AssetImage('images/3Weather/1/API PY.PNG')));
  }

  Widget showtxt1() {
    return Container(
      padding: EdgeInsets.all(20),
      child: RichText(
        text: TextSpan(
            text: '1.ในส่วนแรก',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.black,
            ),
            children: <TextSpan>[
              TextSpan(
                  text:
                      '  เราจะดึงคลาสข้อมูลก่อนเพื่อให้นำมาใช้งานในโปรแกรมได้',
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
                      ' เราจะเรียกใช้โมดูล flask เพื่อที่โปรแกรมจะใช้ร่วมกับ webserver ได้และจะกำหนด API หรือข้อมูลสภาพอากาศที่เป็นไฟล์ json โดยจะนําข้อมูลมาจาก https://openweathermap.org จากนั้นให้โปรแกรมแปลและอ่านค่า json และดึงมาใช้',
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
                      '  เราจะเรียกใช้ data ที่แปลจาก json มาใช้ ดังนี้และให้โปรแกรมแสดงผล data ผ่าน index.htmlโดยนำ data ไปแสดงแล้วในส่วนบรรทัดสุดท้ายเป็นการทำให้โปรแกรมรันต่อไปได้ โดยถ้าข้อมูลถูกต้อง จะแสดงผลเรื่อยแต่ถ้าไม่ โปรแกรมจะ error และสิ้นสุดทันที',
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
        backgroundColor: Colors.redAccent,
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
