// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// class SampleScreen extends StatefulWidget {
//   const SampleScreen({super.key});

//   @override
//   State<SampleScreen> createState() => _SampleScreenState();
// }

// class _SampleScreenState extends State<SampleScreen> {
//   @override
//    Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView.builder(
//         scrollDirection: Axis.vertical, // Enable vertical scrolling
//         itemCount: videoUrls.length,
//         itemBuilder: (context, index) {
//           return VideoPlayerWidget(videoUrl: videoUrls[index]);
//         },
//       ),
//     );
//   }
// }