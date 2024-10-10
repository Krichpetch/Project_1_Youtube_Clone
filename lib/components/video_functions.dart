import 'package:flutter/material.dart';
import '../components/video_button.dart';

class VideoFunctions extends StatelessWidget {
  final int likeCount;
  final int commentCount;

  const VideoFunctions({
    required this.likeCount,
    required this.commentCount,
    super.key,
  });

  // Function to format counts from int to string with K
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
    return Column(
      children: [
        const SizedBox(height: 22),
        SizedBox(
          height: 35,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(width: 10),
                LikeDislikeButton(likeCount: formatCount(likeCount)), // Use the formatted like count
                VideoButton(
                  icon: Icons.comment_outlined,
                  label: formatCount(commentCount), // Use the formatted comment count
                ),
                const VideoButton(
                  icon: Icons.playlist_add_sharp,
                  label: "Save",
                ),
                const VideoButton(
                  icon: Icons.share,
                  label: "Share",
                ),
                const VideoButton(
                  icon: Icons.file_download_outlined,
                  label: "Download",
                ),
                const VideoButton(
                  icon: Icons.radio,
                  label: "Radio",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
