import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:photo_view/photo_view.dart';

class LessonTWtwo extends StatelessWidget {
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
    return Text('ไวรัสโควิด19:HTML',
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
            imageProvider:
                AssetImage('images/2Covid19/HTML/1 HTML Covid19.PNG')));
  }

  Widget showLogo2() {
    return Container(
        width: 200.0,
        height: 200.0,
        child: PhotoView(
            imageProvider:
                AssetImage('images/2Covid19/HTML/2 HTML Covid19.PNG')));
  }

  Widget showLogo3() {
    return Container(
        width: 200.0,
        height: 200.0,
        child: PhotoView(
            imageProvider:
                AssetImage('images/2Covid19/HTML/3 HTML Covid19.PNG')));
  }

  Widget showLogo4() {
    return Container(
        width: 200.0,
        height: 200.0,
        child:
            PhotoView(imageProvider: AssetImage('images/2Covid19/HTML/4.PNG')));
  }

  Widget showtxt01() {
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
                  text:
                      ' ดึงข้อมูล Document ของ dateเพื่อที่จะทำให้เว็บเพจ เริ่มการนับเวลา/วันที่ หรือแสดงเวลา/วันที่แบบ Realtime',
                  style: TextStyle(fontWeight: FontWeight.normal)),
              //fontStyle: FontStyle.italic),
            ]),
      ),
    );
  }

  Widget showtxt1() {
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
                      ' จะกำหนดส่วนของหน้าเว็บและตัวของ fonts ตัวหนังสือของ หน้าเว็บเพจ Covid19',
                  children: <TextSpan>[
                    TextSpan(
                        text:
                            '  เเละในต่อมาเราจะออกแบบเว็บเพจ covid19 ให้มีลักษณะตามที่เราต้องการและตัวหนังสือที่มีขนาดที่เหมาะสมกับหน้าเว็บเพจของเรา')
                  ],
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
            text: '3. ในส่วนสุดท้าย',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.black,
            ),
            children: <TextSpan>[
              TextSpan(
                  text:
                      ' เราจะดึงข้อมูล DATA ที่เราสร้างไว้จาก Python มาใช้ในหน้าเว็บเพจเพื่อมาเเสดงผลในหน้าเพจได้ตามที่เรากำหนด',
                  children: <TextSpan>[
                    TextSpan(
                        text:
                            ' ก็คือการเพิ่มข้อมูล data ในส่วนที่เหลือมาแสดงผลในหน้าเว็บเพจ covid19 ของประเทศไทยนั้น เป็นอันเสร็จสิ้น')
                  ],
                  style: TextStyle(fontWeight: FontWeight.normal)),
              //fontStyle: FontStyle.italic),
            ]),
      ),
    );
  }

  Widget showtxt5() {
    return Container(
      padding: EdgeInsets.all(20),
      child: RichText(
        text: TextSpan(
            text: '4. หลังจากที่ทำทั้งสองส่วนทั้ง python และ html',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.black,
            ),
            children: <TextSpan>[
              TextSpan(
                  text:
                      'เราจะ run โปรแกรมในส่วนของหน้าต่าง python โดยในหน้าต่าง Teminal จะแสดงผลเป็นลิ้งค์ของเว็บเพจ (http://127.0.0.1:5000/) เราสามารถนำไปใส่ในหน้า browser เพื่อดูผลลัพธ์ได้เลย',
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
        title: Text('บทเรียนที่ 2'),
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
          showtxt01(),
          SizedBox(
            height: 30.0,
          ),
          showLogo2(),
          showtxt1(),
          SizedBox(
            height: 30.0,
          ),
          showLogo3(),
          showtxt3(),
          SizedBox(
            height: 30.0,
          ),
          showtxt5(),
          showLogo4(),
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
