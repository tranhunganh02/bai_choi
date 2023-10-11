import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({super.key});

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;
  List<String> videoPaths = [
    'assets/videos/01.mp4',
    'assets/videos/IMG_4278.mp4',
    'assets/videos/pillow_talk.mp4',
    // Thêm các đường dẫn đến video cần chơi ở đây
  ];

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(videoPaths[0])..initialize().then((_) {
      setState(() {
        _controller.play();
      });
    });
    _controller.addListener(_onVideoEnded);

  }
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void _onVideoEnded() {
    if (_controller.value.position == _controller.value.duration) {
      if (videoPaths.isNotEmpty) {
        videoPaths.removeAt(0);
        _controller.pause();
        _controller.dispose();
        _controller = VideoPlayerController.asset(videoPaths[0])
          ..initialize().then((_) {
            setState(() {
              _controller.play();
            });
          });
        _controller.addListener(_onVideoEnded);
      } else {
        print('All videos played');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chơi Video Lần Lượt'),
      ),
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: VideoPlayer(_controller),
        )
            : const CircularProgressIndicator(),
      ),
    );
  }


}
