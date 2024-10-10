import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import '../components/switch_button.dart';
import '../components/song_title_player.dart';
import '../components/cover_image.dart';
import '../components/video_functions.dart';
import '../components/video_controller_button.dart';
import '../constant/constant.dart';

class MusicVideoPlayerPage extends StatefulWidget {
  final String videoName;
  final String songName;
  final String artist;
  final int likeCount;
  final int commentCount;

  const MusicVideoPlayerPage(
      {required this.videoName,
      required this.songName,
      required this.artist,
      required this.likeCount,
      required this.commentCount,
      super.key});

  @override
  _MusicVideoPlayerPageState createState() => _MusicVideoPlayerPageState();
}

class _MusicVideoPlayerPageState extends State<MusicVideoPlayerPage> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;
  bool showVideo = false;
  bool isPlaying = true;
  double _currentSliderValue = 0.0;

  // Generate Video Path
  String _getVideoPath(String name) {
    return 'assets/videos/$name.mp4'; // Generate the path
  }

  @override
  void initState() {
    super.initState();
    _initializeVideoPlayer();
  }

  void _initializeVideoPlayer() {
    _videoPlayerController =
        VideoPlayerController.asset(_getVideoPath(widget.videoName))
          ..addListener(() {
            setState(() {
              _currentSliderValue =
                  _videoPlayerController.value.position.inSeconds.toDouble();
            });
          });

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
      looping: true,
      showControls: false,
    );
  }

  @override
  void didUpdateWidget(MusicVideoPlayerPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.videoName != widget.videoName) {
      _videoPlayerController.dispose();
      _chewieController?.dispose();
      _initializeVideoPlayer(); // Reinitialize for the new video
    }
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  void toggleView(bool isSelected) {
    setState(() {
      showVideo = isSelected;
    });
  }

  void _togglePlayPause() {
    setState(() {
      isPlaying
          ? _videoPlayerController.pause()
          : _videoPlayerController.play();
      isPlaying = !isPlaying;
    });
  }

  // Helper function to format the duration into "mm:ss"
  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    String twoDigitMinutes = duration.inMinutes
        .remainder(60)
        .toString(); // Remove padding for minutes
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "$twoDigitMinutes:$twoDigitSeconds";
  }

  void doNothing() {
    // This function intentionally left blank.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: const Icon(
          Icons.keyboard_arrow_down,
          color: Colors.white,
        ),
        leadingWidth: 70,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 20,
            ),
            CustomSwitchAppBar(
              option1: "Song",
              option2: "Video",
              onChanged: toggleView,
            ),
          ],
        ),
        backgroundColor: Colors.black,
        elevation: 0,
        actions: const [
          Icon(
            Icons.cast,
            color: Colors.white,
            size: 22,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
            size: 22,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: _buildContent(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      children: [
        const SizedBox(height: 33),
        Stack(
          children: [
            showVideo
                ? SizedBox(
                    height: 350,
                    width: double.infinity,
                    child: Center(
                      child: _videoPlayerController.value.isInitialized
                          ? Chewie(controller: _chewieController!)
                          : const CircularProgressIndicator(),
                    ),
                  )
                : CoverImage(imageName: widget.videoName),
          ],
        ),
        SongTitlePlayer(
          songName: widget.songName,
          artist: widget.artist,
        ),
        VideoFunctions(
          likeCount: widget.likeCount,
          commentCount: widget.commentCount,
        ),
        const SizedBox(height: 18),
        Column(
          children: [
            // Customizing the Slider
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: 0.2,
                thumbShape: const RoundSliderThumbShape(
                  enabledThumbRadius: 6.5,
                ),
                thumbColor: textPrimary,
                activeTrackColor: textPrimary,
                inactiveTrackColor: textPrimary,
              ),
              child: Slider(
                value: _currentSliderValue,
                min: 0,
                max: _videoPlayerController.value.duration.inSeconds.toDouble(),
                onChanged: (value) {
                  setState(() {
                    _videoPlayerController
                        .seekTo(Duration(seconds: value.toInt()));
                    _currentSliderValue = value;
                  });
                },
              ),
            ),

            // Current time and total duration
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween, // Distribute space evenly
                children: [
                  Text(
                    _formatDuration(
                        Duration(seconds: _currentSliderValue.toInt())),
                    style: textTime,
                  ),
                  Text(
                    _formatDuration(_videoPlayerController.value.duration),
                    style: textTime,
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OtherControlButtons(
              icon: Icons.shuffle_sharp,
              size: 25.0,
              color: textSecondary,
              onPressed: doNothing,
            ),
            OtherControlButtons(
              icon: Icons.skip_previous,
              size: 35.0,
              color: textPrimary,
              onPressed: doNothing,
            ),
            PlayPauseButton(isPlaying: isPlaying, onPressed: _togglePlayPause),
            OtherControlButtons(
              icon: Icons.skip_next,
              size: 35.0,
              color: textPrimary,
              onPressed: doNothing,
            ),
            OtherControlButtons(
              icon: Icons.repeat,
              size: 25.0,
              color: textSecondary,
              onPressed: doNothing,
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}