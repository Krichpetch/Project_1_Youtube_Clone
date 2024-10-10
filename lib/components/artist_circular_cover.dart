import 'package:flutter/material.dart';
import '../constant/constant.dart';

class ArtistCover extends StatelessWidget {
  final String artistProfile;
  final String artistName;
  final int followerCount;

  const ArtistCover({
    required this.artistProfile,
    required this.artistName,
    required this.followerCount,
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
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 18, 10),
      child: GestureDetector(
        onTap: () {},
        child: SizedBox(
          width: 175,
          child: Column(
            children: [
              CircleAvatar(
                radius: 87.5,
                backgroundImage: AssetImage('assets/covers/$artistProfile.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 175),
                            child: Text(
                              artistName,
                              style: textBigCover,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const SizedBox(height: 5),
                          ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 175),
                            child: Text(
                              formatCount(followerCount) + " Subscribers",
                              style: textBigCoverSubtitle ,
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
