import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../screens/video_player_screen.dart';

import '../constant/constant.dart';

class SmallCover extends StatelessWidget {
  final String imageName;
  final String songName;
  final String artist;
  final int likeCount;
  final int commentCount;

  const SmallCover({
    required this.imageName,
    required this.songName,
    required this.artist,
    required this.likeCount,
    required this.commentCount,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 18, 10),
      child: GestureDetector(
        onTap: () {
          // Navigate to the video page when tapped
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MusicVideoPlayerPage(
                      videoName: imageName,
                      songName: songName,
                      artist: artist,
                      likeCount: likeCount,
                      commentCount: commentCount,
                    )),
          );
        },
        child: SizedBox(
          width: 115,
          child: Column(
            children: [
              Container(
                height: 115,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/covers/$imageName.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        songName,
                        style: textCover,
                        maxLines: 2, // Allow up to 2 lines
                        overflow:
                            TextOverflow.ellipsis, // Show ellipsis if clipped
                        semanticsLabel:
                            'Song name: $songName', // Optional: for accessibility
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
