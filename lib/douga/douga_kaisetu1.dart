import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class DougaKaisetu1 extends StatefulWidget {
  const DougaKaisetu1({super.key});

  @override
  State<DougaKaisetu1> createState() => _DougaKaisetu1State();
}

class _DougaKaisetu1State extends State<DougaKaisetu1> {
  late VideoPlayerController _controller;

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
    return Scaffold(
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: SizedBox(
              width: 344,
              height: 640,
              child: VideoPlayer(_controller),
            ),
          ),
        ],
      ),
    );
  }
}
