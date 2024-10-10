import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../screens/blank _screen.dart';
import '../screens/sample_screen.dart';
import '../screens/youtube_music.dart';
import '../screens/playlist_screen.dart';
import '../constant/constant.dart';
import '../screens/New_Nav.dart';


class NavbarScreen extends StatelessWidget {
  const NavbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () => Container(
          height: 72.0, // Set your desired height here
          color: themeSecondary, // Set background color here
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: themeSecondary,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            selectedFontSize: 10,
            unselectedFontSize: 10,
            currentIndex: controller.selectedIndex.value,
            onTap: (index) => controller.selectedIndex.value = index,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Iconsax.shop),
                label: 'Samples',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.explore_outlined),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.library_music_outlined),
                label: 'Library',
              ),
            ],
          ),
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const DynamicAppbar(),
    const YouTubeMusicHome(),
    const PlaylistPage(playlistName: "Secret Love Songs",playlistCover: "Playlist_01",playlistDescription: "This is a short Description of what the playlist is",updateDate: "11 October 2024",uploader: "Krichpetch Sintanakul",),
  ];
}
