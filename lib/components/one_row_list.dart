import 'package:flutter/material.dart';
import '../components/big_cover.dart';
import '../components/artist_circular_cover.dart';
import '../components/playlist_title.dart';
import '../constant/constant.dart';

class SimilarToList extends StatelessWidget {
  const SimilarToList({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(left: 20),
        child: Column(
          children: [
            PlaylistTitle(
              title: "Listen Again",
              subtitle: "Krichpetch Sintanakul",
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  BigCover(
                    albumCover: "01_Bruno_Mars-Thats_What_I_Like",
                    songName:
                        "That's what I like, That's what I like, That's what I like, That's what I like",
                    artists: "Suisei, Bruno Mars, Ice Saranyu",
                  ),
                  ArtistCover(
                      artistProfile: "01_Bruno_Mars-Thats_What_I_Like",
                      artistName: "Bruno Mars",
                      followerCount: 12121554),
                  BigCover(
                    albumCover: "04_Hoshimachi_Suisei-Moonlight",
                    songName: "Moonlight",
                    artists:
                        "Suisei, Bruno Mars, Ice Saranyu, Suisei, Bruno Mars, Ice Saranyu, Suisei, Bruno Mars, Ice Saranyu",
                  ),
                  BigCover(
                    albumCover: "02_Ice_Saranyu-Khon_Man_Rak",
                    songName: "คนใจง่าย",
                    artists: "Suisei, Bruno Mars, Ice Saranyu",
                  ),
                  BigCover(
                    albumCover: "03_Stephen_Sanchez-Until_I_Found_You",
                    songName: "Until I Found Tou",
                    artists: "Suisei, Bruno Mars, Ice Saranyu, Stephen Sanchez",
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

class PlaylistRecommended extends StatelessWidget {
  const PlaylistRecommended({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          children: [
            SizedBox(
              height: 25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Playlists for you", style: textPlaylistTitle),
                  const Column(
                    children: [
                      Icon(
                        Icons.navigate_next,
                        color: textSecondary,
                        size: 25,
                      ),
                      SizedBox(
                        width: 52,
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  BigCover(
                    albumCover: "01_Bruno_Mars-Thats_What_I_Like",
                    songName:
                        "That's what I like, That's what I like, That's what I like, That's what I like",
                    artists: "Suisei, Bruno Mars, Ice Saranyu",
                  ),
                  BigCover(
                    albumCover: "04_Hoshimachi_Suisei-Moonlight",
                    songName: "Moonlight",
                    artists:
                        "Suisei, Bruno Mars, Ice Saranyu, Suisei, Bruno Mars, Ice Saranyu, Suisei, Bruno Mars, Ice Saranyu",
                  ),
                  BigCover(
                    albumCover: "02_Ice_Saranyu-Khon_Man_Rak",
                    songName: "คนใจง่าย",
                    artists: "Suisei, Bruno Mars, Ice Saranyu",
                  ),
                  BigCover(
                    albumCover: "03_Stephen_Sanchez-Until_I_Found_You",
                    songName: "Until I Found Tou",
                    artists: "Suisei, Bruno Mars, Ice Saranyu, Stephen Sanchez",
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
