import 'package:flutter/material.dart';
import '../constant/constant.dart';

class PlaylistTitle extends StatelessWidget {
  final String title;
  final String subtitle;
  const PlaylistTitle({
    required this.title,
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 65,
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Column(
            children: [
              const SizedBox(
                height: 23,
              ),
              Row(
                children: [
                  const CircleAvatar(
                      radius: 17,
                      backgroundImage: AssetImage(userProfileImage)),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(subtitle.toUpperCase(), style: textPlaylistSubtitle),
                      Text(title, style: textPlaylistTitle),
                    ],
                  )
                ],
              ),
            ],
          ),
        ]));
  }
}
