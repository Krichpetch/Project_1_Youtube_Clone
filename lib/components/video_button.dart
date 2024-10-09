import 'package:flutter/material.dart';
import '../constant/constant.dart';

class VideoButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const VideoButton({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        margin: const EdgeInsetsDirectional.only(end: 7.0),
        decoration: BoxDecoration(
          color: themeSecondary,
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Center(
          child: Row(
            children: [
              Icon(
                icon,
                color: textPrimary,
                size: 19,
              ),
              const SizedBox(width: 10),
              Text(label, style: textFilter),
            ],
          ),
        ),
      ),
    );
  }
}

//Like-Dislike Button
class LikeDislikeButton extends StatefulWidget {
  final String likeCount;

  const LikeDislikeButton({
    super.key,
    required this.likeCount,
  });

  @override
  State<LikeDislikeButton> createState() => _LikeDislikeButtonState();
}

class _LikeDislikeButtonState extends State<LikeDislikeButton> {
  bool isLiked = false;
  bool isDisliked = false;

  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
      if (isLiked) {
        isDisliked = false;
      }
    });
  }

  void toggleDislike() {
    setState(() {
      isDisliked = !isDisliked;
      if (isDisliked) {
        isLiked = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(end: 7.0),
      decoration: BoxDecoration(
        color: themeSecondary,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Row(
        children: [
          // Like Button
          GestureDetector(
            onTap: toggleLike,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Center(
                child: Row(
                  children: [
                    Icon(isLiked ? Icons.thumb_up_alt : Icons.thumb_up_alt_outlined,
                        color: textPrimary, size: 19),
                    const SizedBox(width: 10),
                    Text(widget.likeCount,
                        style: textFilter), 
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: VerticalDivider(
              color: Colors.grey,
              width: 10,
              thickness: 1,
            ),
          ),
          // Dislike Button
          GestureDetector(
            onTap: toggleDislike,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Center(
                child: Row(
                  children: [
                    Icon(isDisliked ? Icons.thumb_down_alt : Icons.thumb_down_alt_outlined,
                        color: textPrimary, size: 19),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
