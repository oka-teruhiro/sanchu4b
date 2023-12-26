import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class DougaKaisetu1 extends StatefulWidget {
  const DougaKaisetu1({super.key});

  @override
  State<DougaKaisetu1> createState() => _DougaKaisetu1State();
}

class _DougaKaisetu1State extends State<DougaKaisetu1> {
  late VideoPlayerController _controller;
  bool initSwitch = false;
  bool complate = false;
  bool playSwitch = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/kaisetu1.mp4');
    _controller.initialize();
    _controller.play();
  }

  @override
  void despose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_controller.value.isPlaying) {
          _controller.pause();
        }
        return true;
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(
            'アプリの使い方',
            style: TextStyle(
              color: Colors.pinkAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Container(
          color: Colors.black,
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: ListView(
              children: [
                ListTile(
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(
                        child: SizedBox(
                          //width: 500,
                          height: 600,
                          child: AspectRatio(
                            aspectRatio: 3 / 5,
                            child: VideoPlayer(_controller),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        persistentFooterButtons: <Widget>[
          VideoProgressIndicator(
            _controller,
            allowScrubbing: true,
          ),
          Container(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  // 動画を最初から再生
                  _controller
                      .seekTo(Duration.zero)
                      .then((_) => _controller.play());
                  playSwitch = true;
                  setState(() {});
                },
                icon: const Icon(Icons.refresh),
              ),
              IconButton(
                onPressed: () {
                  // 動画を最初から再生
                  _controller.seekTo(Duration(
                      seconds: _controller.value.position.inSeconds - 10));
                  playSwitch = true;
                  setState(() {});
                },
                icon: const Icon(Icons.replay_10),
              ),
              playSwitch
                  ? IconButton(
                      onPressed: () {
                        // 動画を一時停止
                        _controller.pause();
                        playSwitch = !playSwitch;
                        setState(() {});
                      },
                      icon: const Icon(Icons.pause),
                    )
                  : IconButton(
                      onPressed: () {
                        // 動画を再生
                        _controller.play();
                        playSwitch = !playSwitch;
                        setState(() {});
                      },
                      icon: const Icon(Icons.play_arrow),
                    ),
              IconButton(
                onPressed: () {
                  // 動画を最初から再生
                  _controller.seekTo(Duration(
                      seconds: _controller.value.position.inSeconds + 10));
                  playSwitch = true;
                  setState(() {});
                },
                icon: const Icon(Icons.forward_10),
              ),
              IconButton(
                onPressed: () {
                  // 動画を最初から再生
                  _controller
                      .seekTo(Duration.zero)
                      .then((_) => _controller.pause());
                  playSwitch = false;
                  setState(() {});
                  despose();
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.stop),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /*@override
  void despose() {
    _controller.dispose();
    super.dispose();
  }*/
}
