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
    runApp(LessonTHRthree());
  });
}

class LessonTHRthree extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LessonTHRthreeState();
  }
}

class _LessonTHRthreeState extends State<LessonTHRthree> {

  Widget showtxt() {
    return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
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
                Text(
                  'แสดงตัวอย่างเว็ปเพจพยากรณ์อากาศ',
                  style: TextStyle(
                    fontSize: 20.5,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  //fontStyle: FontStyle.italic),
                ),
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

  VideoPlayerController videoPlayerController;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.asset('videoPR/3weather.mp4');

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
        backgroundColor: Colors.redAccent,
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
          ),
          SizedBox(
            height: 50.0,
          ),
        ]),
      )),
    );
  }
}
