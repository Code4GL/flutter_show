import 'theme.dart';
import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';

import 'package:video_player/video_player.dart';

class ChewieExamplePage extends StatefulWidget {
  const ChewieExamplePage({
    Key? key,
    this.title = 'Chewie Demo',
  }) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _ChewieExamplePageState();
  }
}

class _ChewieExamplePageState extends State<ChewieExamplePage> {
  TargetPlatform? _platform;
  late VideoPlayerController _videoPlayerController1;
  late VideoPlayerController _videoPlayerController2;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  @override
  void dispose() {
    _videoPlayerController1.dispose();
    _videoPlayerController2.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.asset(
        'assets/images/package/video_player/luoxiaohei_1_miao.mp4');
    _videoPlayerController2 = VideoPlayerController.asset(
        'assets/images/package/video_player/luoxiaohei_1_miao.mp4');
    await Future.wait([
      _videoPlayerController1.initialize(),
      _videoPlayerController2.initialize()
    ]);
    _createChewieController();
    setState(() {});
  }

  void _createChewieController() {
    // final subtitles = [
    //     Subtitle(
    //       index: 0,
    //       start: Duration.zero,
    //       end: const Duration(seconds: 10),
    //       text: 'Hello from subtitles',
    //     ),
    //     Subtitle(
    //       index: 0,
    //       start: const Duration(seconds: 10),
    //       end: const Duration(seconds: 20),
    //       text: 'Whats up? :)',
    //     ),
    //   ];

    final subtitles = [
      Subtitle(
        index: 0,
        start: Duration.zero,
        end: const Duration(seconds: 10),
        text: 'title',
        // text: const TextSpan(
        //   children: [
        //     TextSpan(
        //       text: 'Hello',
        //       style: TextStyle(color: Colors.red, fontSize: 22),
        //     ),
        //     TextSpan(
        //       text: ' from ',
        //       style: TextStyle(color: Colors.green, fontSize: 20),
        //     ),
        //     TextSpan(
        //       text: 'subtitles',
        //       style: TextStyle(color: Colors.blue, fontSize: 18),
        //     )
        //   ],
        // ),
      ),
      Subtitle(
          index: 0,
          start: const Duration(seconds: 10),
          end: const Duration(seconds: 20),
          text: 'Whats up? :)'
          // text: const TextSpan(
          //   text: 'Whats up? :)',
          //   style: TextStyle(color: Colors.amber, fontSize: 22, fontStyle: FontStyle.italic),
          // ),
          ),
    ];

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: true,
      looping: true,

      subtitle: Subtitles(subtitles),
      subtitleBuilder: (context, dynamic subtitle) => Container(
        padding: const EdgeInsets.all(10.0),
        child: subtitle is InlineSpan
            ? RichText(
                text: subtitle,
              )
            : Text(
                subtitle.toString(),
                style: const TextStyle(color: Colors.black),
              ),
      ),

      // Try playing around with some of these other options:

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: _chewieController != null &&
                      _chewieController!
                          .videoPlayerController.value.isInitialized
                  ? Chewie(
                      controller: _chewieController!,
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircularProgressIndicator(),
                        SizedBox(height: 20),
                        Text('Loading'),
                      ],
                    ),
            ),
          ),
          TextButton(
            onPressed: () {
              _chewieController?.enterFullScreen();
            },
            child: const Text('Fullscreen'),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      _videoPlayerController1.pause();
                      _videoPlayerController1.seekTo(const Duration());
                      _createChewieController();
                    });
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Text("Landscape Video"),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      _videoPlayerController2.pause();
                      _videoPlayerController2.seekTo(const Duration());
                      _chewieController = ChewieController(
                        videoPlayerController: _videoPlayerController2,
                        autoPlay: true,
                        looping: true,
                        /* subtitle: Subtitles([
                            Subtitle(
                              index: 0,
                              start: Duration.zero,
                              end: const Duration(seconds: 10),
                              text: 'Hello from subtitles',
                            ),
                            Subtitle(
                              index: 0,
                              start: const Duration(seconds: 10),
                              end: const Duration(seconds: 20),
                              text: 'Whats up? :)',
                            ),
                          ]),
                          subtitleBuilder: (context, subtitle) => Container(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              subtitle,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ), */
                      );
                    });
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Text("Portrait Video"),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      _platform = TargetPlatform.android;
                    });
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Text("Android controls"),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      _platform = TargetPlatform.iOS;
                    });
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Text("iOS controls"),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      _platform = TargetPlatform.windows;
                    });
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Text("Desktop controls"),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
