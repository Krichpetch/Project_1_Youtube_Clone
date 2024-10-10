import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../components/small_cover.dart';
import '../components/playlist_title.dart';
import '../constant/constant.dart';



class TwoRowsList extends StatelessWidget {
  const TwoRowsList({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Padding(
        padding:  EdgeInsets.only(left: 20),
        child: SizedBox(
          height: 420,
          child: SizedBox(
            height: 310,
            child: Column(
              children: [
                PlaylistTitle(title: "Listen Again",subtitle: "Krichpetch Sintanakul",),
                 SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 177.5,
                            child: Row(children: [
                                SmallCover(
                                imageName: "01_Bruno_Mars-Thats_What_I_Like",
                                songName: "That's what I like, That's what I like, That's what I like",
                                artist: "Bruno Mars",
                                likeCount: 18745,
                                commentCount: 1847,
                              ),
                              SmallCover(
                                imageName: "02_Ice_Saranyu-Khon_Man_Rak",
                                songName: "คนมันรัก",
                                artist: "ไอซ์ ศรัณยู",
                                likeCount: 6541,
                                commentCount: 502,
                              ),
                                SmallCover(
                                imageName:
                                    "03_Stephen_Sanchez-Until_I_Found_You",
                                songName: "Until I found you",
                                artist: "Stephen Sanchez",
                                likeCount: 13471,
                                commentCount: 1540,
                              ),
                              SmallCover(
                                imageName: "04_Hoshimachi_Suisei-Moonlight",
                                songName: "Moonlight",
                                artist: "星街すいせい",
                                likeCount: 9471,
                                commentCount: 410,
                              ),
                            ]),
                          ),
                          SizedBox(
                            height: 177.5,
                            child: Row(children: [
                               SmallCover(
                                imageName: "04_Hoshimachi_Suisei-Moonlight",
                                songName: "Moonlight",
                                artist: "星街すいせい",
                                likeCount: 9471,
                                commentCount: 410,
                              ),
                               SmallCover(
                                imageName:
                                    "03_Stephen_Sanchez-Until_I_Found_You",
                                songName: "Until I found you",
                                artist: "Stephen Sanchez",
                                likeCount: 13471,
                                commentCount: 1540,
                              ),
                              SmallCover(
                                imageName: "02_Ice_Saranyu-Khon_Man_Rak",
                                songName: "คนมันรัก",
                                artist: "ไอซ์ ศรัณยู",
                                likeCount: 6541,
                                commentCount: 502,
                              ),
                             
                              SmallCover(
                                imageName: "01_Bruno_Mars-Thats_What_I_Like",
                                songName: "That's what I like",
                                artist: "Bruno Mars",
                                likeCount: 18745,
                                commentCount: 1847,
                              ),
                              
                            ]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

