import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:tiktok/rellsDetails.dart';
import 'package:video_player/video_player.dart';

import 'action_button.dart';
import 'rellspage.dart';

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({super.key, required this.videoUrl});
  final String videoUrl;
  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  bool isFullScreen = true;
  late VideoPlayerController _controller;
  void toggleFullScreen() {
    setState(() {
      isFullScreen = isFullScreen;
      if (isFullScreen) {
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
      } else {
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
            overlays: SystemUiOverlay.values);
      }
    });
  }

  loadVideoPlayer() async {
    print('loading url  ${widget.videoUrl}');
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl));
    await _controller.initialize();
    await _controller.play();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    loadVideoPlayer();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPressDown: (v) {
        _controller.pause();
      },
      onLongPressEnd: (v) {
        _controller.play();
      },
      // onTap: toggleFullScreen,
      child: SizedBox.fromSize(
        size: MediaQuery.of(context).size,
        child: Stack(
          children: [
            _controller.value.isInitialized
                ? AspectRatio(
                    aspectRatio: isFullScreen
                        ? MediaQuery.of(context).size.aspectRatio
                        : _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  )
                : CircularProgressIndicator(),
            // Container(
            //   decoration: BoxDecoration(
            //     gradient: LinearGradient(
            //       colors: [
            //         Colors.black.withOpacity(0.3),
            //         Colors.transparent,
            //       ],
            //       begin: Alignment(0, -0.75),
            //       end: Alignment(0, 1),
            //     ),
            //   ),
            // ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.3),
                    Colors.transparent,
                  ],
                  end: Alignment(0, 1),
                  begin: Alignment(0, -0.75),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Flexible(
                    flex: 14,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ListTile(
                          dense: true,
                          minLeadingWidth: 0,
                          horizontalTitleGap: 12,
                          title: Text(
                            'Hello - Follow',
                            style:
                                TextStyle(fontSize: 14, color: Colors.white54),
                          ),
                          leading: CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage(
                              'https://i.pinimg.com/236x/01/46/1e/01461ea823c46c1fe741baf57cab0506.jpg',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 14),
                          child: ExpandableText(
                            'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
                            style:
                                TextStyle(fontSize: 12.5, color: Colors.white),
                            expandText: 'show more',
                            collapseText: 'show less',
                            maxLines: 1,
                            linkColor: Colors.blue,
                          ),
                        ),
                        ListTile(
                          dense: true,
                          minLeadingWidth: 0,
                          horizontalTitleGap: 12,
                          title: Text(
                            'Music list ',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white54,
                            ),
                          ),
                          leading: Icon(
                            Icons.music_note_rounded,
                            size: 14,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: ActionButton(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
