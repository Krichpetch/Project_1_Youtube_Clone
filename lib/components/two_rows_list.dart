import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../components/small_cover.dart';

class TwoRowsList extends StatelessWidget {
  const TwoRowsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: SizedBox(
          height: 420,
          child: SizedBox(
            height: 310,
            child: Column(
              children: [
                Container(height: 65, color: Colors.blue, child: const Row()),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 177.5,
                            child: Row(children: [
                             
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
                              SmallCover(
                                imageName: "01_Bruno_Mars-Thats_What_I_Like",
                                songName: "That's what I like",
                                artist: "Bruno Mars",
                                likeCount: 18745,
                                commentCount: 1847,
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
                          SizedBox(
                            height: 177.5,
                            child:  Row(children: [
                              SmallCover(
                                imageName: "01_Bruno_Mars-Thats_What_I_Like",
                                songName: "That's what I like",
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
                                imageName: "03_Stephen_Sanchez-Until_I_Found_You",
                                songName: "Until I found you",
                                artist: "Stephen Sanchez",
                                likeCount: 18745,
                                commentCount: 1847,
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
