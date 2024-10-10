import 'package:flutter/material.dart';
import '../constant/constant.dart';
import '../components/cover_image.dart';
import '../components/video_controller_button.dart';

class PlaylistInfo extends StatelessWidget {
  final String userProfileImage;
  final String playlistName;
  final String playlistDescription;
  final String playlistCover;
  final String updateDate;
  final String uploader;

  const PlaylistInfo({
    required this.userProfileImage,
    required this.playlistName,
    required this.playlistDescription,
    required this.playlistCover,
    required this.updateDate,
    required this.uploader,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 10,
                  backgroundImage: AssetImage(userProfileImage),
                ),
                const SizedBox(width: 6),
                Text(uploader, style: textFilter),
              ],
            ),
            const SizedBox(height: 3),
            Text(
              "Updated $updateDate",
              style: textPlaylistSubtitle,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: SizedBox(
                height: 240,
                width: 240,
                child: CoverImage(imageName: playlistCover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Text(
                playlistName,
                style: textTitle,
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              playlistDescription,
              style: textSubTitle,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PlaylistButton(
                    icon: Icons.save_alt_sharp,
                    iconSize: 20.0,
                    backgroundColor: themeSecondary,
                    color: textPrimary,
                    radius: 24.0,
                    onPressed: () {}, // Replace with your function
                  ),
                  PlaylistButton(
                    icon: Icons.add_box_outlined,
                    iconSize: 20.0,
                    backgroundColor: themeSecondary,
                    color: textPrimary,
                    radius: 24.0,
                    onPressed: () {}, // Replace with your function
                  ),
                  PlaylistButton(
                    icon: Icons.play_arrow,
                    iconSize: 38.0,
                    backgroundColor: textPrimary,
                    color: themePrimary,
                    radius: 35.0,
                    onPressed: () {}, // Replace with your function
                  ),
                  PlaylistButton(
                    icon: Icons.forward,
                    iconSize: 20.0,
                    backgroundColor: themeSecondary,
                    color: textPrimary,
                    radius: 24.0,
                    onPressed: () {}, // Replace with your function
                  ),
                  PlaylistButton(
                    icon: Icons.more_vert,
                    iconSize: 20.0,
                    backgroundColor: themeSecondary,
                    color: textPrimary,
                    radius: 24.0,
                    onPressed: () {}, // Replace with your function
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
