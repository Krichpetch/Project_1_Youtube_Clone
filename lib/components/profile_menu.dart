// import 'package:flutter/material.dart';

// import 'package:my_cool_profile/constant/constant.dart';

// class ProfileMenu extends StatelessWidget {
//   final String title;
//   final IconData icons;

//   const ProfileMenu({
//     super.key,
//     required this.title,
//     required this.icons,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//         height: 50,
//         child: SizedBox(
//             height: 40,
//             width: 250,
//             child: Row(
//               children: [
//                 CircleAvatar(
//                     radius: 19,
//                     backgroundColor: themeSecondary,
//                     child: Icon(
//                       icons,
//                       size: 24,
//                       color: specialPrimary,
//                     )),
//                 const SizedBox(
//                   width: 10,
//                 ),
//                 Text(
//                   title,
//                   style: textNavbar,
//                 ),
//                 const Spacer(),
//                 const CircleAvatar(
//                     radius: 14,
//                     backgroundColor: themeSecondary,
//                     child: Icon(
//                       Icons.arrow_forward_ios,
//                       size: 16,
//                       color: highlightTertiary,
//                     )),
//                 const SizedBox(
//                   height: 12,
//                 )
//               ],
//             )));
//   }
// }
