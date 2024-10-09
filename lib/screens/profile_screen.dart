import 'package:flutter/material.dart';
import 'package:my_cool_profile/constant/constant.dart';
import 'package:my_cool_profile/components/profile_img.dart';
import 'package:my_cool_profile/components/profile_menu.dart';
import 'package:my_cool_profile/components/profile_btn_edit.dart';
import 'package:my_cool_profile/components/profile_detail.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: themePrimary,
      // //App bar
      // appBar: AppBar(
      //     backgroundColor: themeSecondary,
      //     leading: const Icon(
      //       Icons.arrow_back_ios,
      //       size: 24,
      //       color: highlightTertiary,
      //     ),
      //     title: Center(
      //       child: Text(
      //         "MY PROFILE",
      //         style: textTitle,
      //       ),
      //     ),
      //     actions: const [
      //       SizedBox(
      //         width: 12,
      //       ),
      //       Icon(
      //         Icons.light_mode,
      //         size: 24,
      //         color: highlightTertiary,
      //       ),
      //       SizedBox(
      //         width: 18,
      //       )
      //     ]),

      // body: const SingleChildScrollView(
      //   child:  Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
              
      //         //profile image
      //         SizedBox(
      //           height: 25,
      //         ),
      //         ProfileImage(),
        
      //         //detail
      //         SizedBox(
      //           height: 12,
      //         ),
      //         ProfileDetails(),
        
      //         //Button
      //         SizedBox(
      //           height: 15,
      //         ),
      //         ProfileButton(),
        
      //         //Profile Menu
      //         SizedBox(
      //           height: 15,
      //         ),
      //         Column(
      //           children: [
      //             ProfileMenu(
      //               title: "Settings",
      //               icons: Icons.settings,
      //             ),
      //             ProfileMenu(
      //               title: "Billing Details",
      //               icons: Icons.monetization_on,
      //             ),
      //             ProfileMenu(
      //                 title: "User Management",
      //                 icons: Icons.supervised_user_circle),
      //             SizedBox(
      //               height: 24,
      //             ),
      //             ProfileMenu(
      //               title: "Information",
      //               icons: Icons.info,
      //             ),
      //             ProfileMenu(
      //               title: "Logout",
      //               icons: Icons.logout,
      //             ),
      //           ],
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
