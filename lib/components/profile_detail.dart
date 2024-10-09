import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_cool_profile/constant/constant.dart';


class ProfileDetails extends StatelessWidget {
  const ProfileDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Krichpetch Sintanakul",
          style: textTitle,
        ),
        Text(
          "Petch2901@gmail.com",
          style: textSubTitle,
        ),
      ],
    );
  }
}