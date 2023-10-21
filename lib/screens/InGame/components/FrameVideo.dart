import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FrameVideo extends StatefulWidget {
  const FrameVideo({
    super.key,
    required this.heightScreen,
    required VideoPlayerController controller, required this.widthScreen,
  }) : _controller = controller;

  final double heightScreen;
  final double widthScreen;
  final VideoPlayerController _controller;

  @override
  State<FrameVideo> createState() => _FrameVideoState();
}

class _FrameVideoState extends State<FrameVideo> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {

        widget._controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.heightScreen * 0.35,
      width: widget.widthScreen,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.yellow, width: 5),
        color: Theme.of(context).colorScheme.surface,
      ),
      // child: _controller.value.isInitialized
      child: widget._controller.value.isInitialized
          ? Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: AspectRatio(
                    aspectRatio: widget._controller.value.aspectRatio,
                    child: VideoPlayer(widget._controller),
                  ),
                ),
                Positioned(
                  height: 15,
                  width: 15,
                  left: 18,
                  bottom: 20,
                  child: IconButton(
                      onPressed: () {}, icon:const Icon(Icons.play_arrow, size: 30,)),
                  //   ), // Thay "icon1" bằng biểu tượng của bạn
                ),
                Positioned(
                  height: 15,
                  width: 15,
                  right: 18,
                  bottom: 20,
                  child: IconButton(
                      onPressed: () {}, icon:const Icon(Icons.skip_next, size: 30)),
                  //   ), // Thay "icon2" bằng biểu tượng của bạn
                ),
               
              ],
            )
          : Container(),
    );
  }
}
