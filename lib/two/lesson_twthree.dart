import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/services.dart';

void main() async {
  ///
  /// Force the layout to Portrait mode
  ///
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(LessonTWthree());
  });
}

class LessonTWthree extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LessonTWthreeState();
  }
}

class _LessonTWthreeState extends State<LessonTWthree> {
  Widget showAppName1() {
    return Text(
      'แสดงตัวอย่างเว็ปเพจเเสดงผู้ติดเชื้อ',
      style: TextStyle(
        fontSize: 20.5,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      //fontStyle: FontStyle.italic),
    );
  }

  Widget showAppName2() {
    return Text(
      'ไวรัสโควิด19',
      style: TextStyle(
        fontSize: 20.5,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      //fontStyle: FontStyle.italic),
    );
  }

  Widget showtxt() {
    return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
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
              ],
            ),
          ),
        ],
      ),
    ));
  }

  VideoPlayerController videoPlayerController;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.asset('videoPR/2covid.mp4');

    _chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      aspectRatio: 16 / 9,
      autoInitialize: true,
      autoPlay: false,
      looping: true,
    );
  }

  @override
  void dispose() {
    _chewieController.videoPlayerController.dispose();

    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text('วิดีโอเเสดงตัวอย่าง'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: Scrollbar(
          child: SingleChildScrollView(
        child: Column(children: <Widget>[
          showtxt(),
          SizedBox(
            height: 20.0,
          ),
          Chewie(
            controller: _chewieController,
          ),SizedBox(
            height: 50.0,
          ),
        ]),
      )),
    );
  }
}
