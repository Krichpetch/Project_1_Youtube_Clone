import 'package:flutter/material.dart';
import '../constant/constant.dart';
import '../components/playlist_info.dart';
import '../components/song_tile.dart';


class PlaylistPage extends StatelessWidget {
  final String playlistName;
  final String playlistDescription;
  final String playlistCover;
  final String updateDate;
  final String uploader;

  const PlaylistPage({
    required this.playlistName,
    required this.playlistDescription,
    required this.playlistCover,
    required this.updateDate,
    required this.uploader,
    super.key,
  });

  void doNothing() {
    // This function intentionally left blank.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themePrimary,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: themePrimary,
            elevation: 0,
            floating: false,
            pinned: true,
            leading: const Icon(
              Icons.arrow_back_sharp,
              size: 25,
              color: textSecondary,
            ),
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                playlistName,
                style: textTitle,
              ),
            ),
            actions: const [
              Icon(
                Icons.search_sharp,
                size: 28,
                color: textSecondary,
              ),
              SizedBox(
                width: 15,
              )
            ],
          ),
           PlaylistInfo(
            userProfileImage: userProfileImage, 
            playlistName: playlistName,
            playlistDescription: playlistDescription,
            playlistCover: playlistCover,
            updateDate: updateDate,
            uploader: uploader,
            
          ),
          const SongTile(songName: "Moonlight",artist: "Hoshimachi Suisei",duration:"3:25",imageName:'04_Hoshimachi_Suisei-Moonlight',views: 1354121,likeCount: 9471,commentCount: 410,),
          const SongTile(songName: "Until I found You",artist: "Stephen Sanchez",duration:"3:25",imageName:'03_Stephen_Sanchez-Until_I_Found_You',views: 4445151,likeCount: 13471,commentCount: 1540,),
          const SongTile(songName: "คนมันรัก",artist: "ไอซ๋ ศรัณยู",duration:"3:30",imageName:'02_Ice_Saranyu-Khon_Man_Rak',views: 1548720,likeCount: 6541,commentCount: 502,),
          const SongTile(songName: "That's What I like",artist: "Bruno Mars",duration:"3:30",imageName:'01_Bruno_Mars-Thats_What_I_Like',views: 30530154,likeCount: 18745,commentCount: 1847,),
          const SongTile(songName: "Moonlight",artist: "Hoshimachi Suisei",duration:"3:25",imageName:'04_Hoshimachi_Suisei-Moonlight',views: 1354121,likeCount: 9471,commentCount: 410,),
          const SongTile(songName: "Until I found You",artist: "Stephen Sanchez",duration:"3:25",imageName:'03_Stephen_Sanchez-Until_I_Found_You',views: 4445151,likeCount: 13471,commentCount: 1540,),
          const SongTile(songName: "คนมันรัก",artist: "ไอซ๋ ศรัณยู",duration:"3:30",imageName:'02_Ice_Saranyu-Khon_Man_Rak',views: 1548720,likeCount: 6541,commentCount: 502,),
          const SongTile(songName: "That's What I like",artist: "Bruno Mars",duration:"3:30",imageName:'01_Bruno_Mars-Thats_What_I_Like',views: 30530154,likeCount: 18745,commentCount: 1847,),
          const SongTile(songName: "Moonlight",artist: "Hoshimachi Suisei",duration:"3:25",imageName:'04_Hoshimachi_Suisei-Moonlight',views: 1354121,likeCount: 9471,commentCount: 410,),
          const SongTile(songName: "Until I found You",artist: "Stephen Sanchez",duration:"3:25",imageName:'03_Stephen_Sanchez-Until_I_Found_You',views: 4445151,likeCount: 13471,commentCount: 1540,),
          const SongTile(songName: "คนมันรัก",artist: "ไอซ๋ ศรัณยู",duration:"3:30",imageName:'02_Ice_Saranyu-Khon_Man_Rak',views: 1548720,likeCount: 6541,commentCount: 502,),
          const SongTile(songName: "That's What I like",artist: "Bruno Mars",duration:"3:30",imageName:'01_Bruno_Mars-Thats_What_I_Like',views: 30530154,likeCount: 18745,commentCount: 1847,),
        ],
        
      ),
    );
  }

 
}


