import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../constant/constant.dart';

class BigCover extends StatelessWidget {
  final String albumCover;
  final String songName;
  final String artists;

  const BigCover({
    required this.albumCover,
    required this.songName,
    required this.artists,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 18, 10),
      child: GestureDetector(
        onTap: () {},
        child: SizedBox(
          width: 175,
          child: Column(
            children: [
              Container(
                height: 175,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/covers/$albumCover.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 175),
                            child: Text(
                              songName,
                              style: textBigCover,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        const SizedBox(height: 5),
                         ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 175),
                            child: Text(
                              artists,
                              style: textBigCoverSubtitle,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
