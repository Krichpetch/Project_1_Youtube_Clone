import 'package:flutter/material.dart';
import '../constant/constant.dart';
import '../screens/video_player_screen.dart';

class SongTile extends StatelessWidget {
  final String imageName;
  final String songName;
  final String artist;
  final String duration;
  final int views;
  final int likeCount;
  final int commentCount;

  const SongTile({
    required this.imageName,
    required this.songName,
    required this.artist,
    required this.duration,
    required this.views,
    required this.likeCount,
    required this.commentCount,
    super.key,
  });

  // Function to generate the full image path
  String _getImagePath(
    String name,
  ) {
    return 'assets/covers/$name.png'; // Generate the path
  }

  String formatCount(int count) {
    if (count >= 1000000000000) {
      return '${(count / 1000000000000).toStringAsFixed(1)}T';
    }
    if (count >= 1000000000) {
      return '${(count / 1000000000).toStringAsFixed(1)}B';
    }
    if (count >= 1000000) {
      return '${(count / 1000000).toStringAsFixed(1)}M';
    }
    if (count >= 1000) {
      return '${(count / 1000).toStringAsFixed(1)}K';
    }
    return count.toString();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
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
          child: ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(_getImagePath(imageName)),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            title: Text(
              songName,
              style: textPlaylistTileTitle,
            ),
            subtitle: Text(
              artist + " • " + duration + " • " + formatCount(views) + " plays",
              style: textPlaylistTileSubtitle,
            ),
            trailing: const Icon(
              Icons.more_vert,
              size: 20.0,
              color: textSecondary,
            ),
          ),
        ),
      ),
    );
  }
}
