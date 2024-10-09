import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_cool_profile/constant/constant.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 190,
      height: 45,
      child: Container(
        decoration: BoxDecoration(
            color: themeSecondary,
            borderRadius: BorderRadius.circular(50)),
            child: Center(child: Text("Edit Profile", style: textButton,))
      ),
    );
  }
}


