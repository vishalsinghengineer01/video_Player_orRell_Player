import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tiktok/rellsDetails.dart';
import 'package:tiktok/videoPlayerWidget.dart';
import 'package:video_player/video_player.dart';
import 'action_button.dart';

class RellsPage extends StatefulWidget {
  const RellsPage({Key? key}) : super(key: key);

  @override
  State<RellsPage> createState() => _RellsPageState();
}

class _RellsPageState extends State<RellsPage> {
  List<String> videoUrls = [
    'https://firebasestorage.googleapis.com/v0/b/sinin-c72be.appspot.com/o/BigBuckBunny.mp4?alt=media&token=1377d37c-d692-47f7-9075-ea39879dd823',
    'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    'https://firebasestorage.googleapis.com/v0/b/sinin-c72be.appspot.com/o/BigBuckBunny.mp4?alt=media&token=1377d37c-d692-47f7-9075-ea39879dd823',
    'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    'https://firebasestorage.googleapis.com/v0/b/sinin-c72be.appspot.com/o/BigBuckBunny.mp4?alt=media&token=1377d37c-d692-47f7-9075-ea39879dd823',
    'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    'https://firebasestorage.googleapis.com/v0/b/sinin-c72be.appspot.com/o/BigBuckBunny.mp4?alt=media&token=1377d37c-d692-47f7-9075-ea39879dd823',
    'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Rells',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.photo_camera_outlined),
            color: Colors.white54,
          ),
        ],
      ),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: videoUrls.length,
        itemBuilder: (context, index) {
          return VideoPlayerWidget(
            videoUrl: videoUrls[index],
          );
        },
      ),
    );
  }
}
