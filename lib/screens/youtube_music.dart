import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart'; // Icons from iconsax

class YouTubeMusicHome extends StatelessWidget {
  const YouTubeMusicHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/icons/YT_Music.png'),
        ),
        title: const Text('Music', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              color: Colors.black,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   SizedBox(height: 16),
                  // Categories
                  SingleChildScrollView(
                    
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children:  [
                        CategoryChip(label: 'Relax'),
                        CategoryChip(label: 'Sleep'),
                        CategoryChip(label: 'Romance'),
                        CategoryChip(label: 'Sad'),
                        CategoryChip(label: 'Energy'),
                      ],
                    ),
                  ),
                   SizedBox(height: 16),
              
                  // Section: Listen Again
                   SectionHeader(title: 'Listen again'),
                   ListenAgainGrid(),
              
                  // Section: Samples for you
                   SectionHeader(title: 'Samples for you'),
                   SamplesGrid(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.black,
        selectedIndex: 0,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_filled), label: 'Home'),
          NavigationDestination(icon: Icon(Iconsax.shop), label: 'Samples'),
          NavigationDestination(icon: Icon(Icons.explore_outlined), label: 'Explore'),
          NavigationDestination(icon: Icon(Icons.library_music_outlined), label: 'Library'),
        ],
      ),
    );
  }
}

class CategoryChip extends StatelessWidget {
  final String label;
  const CategoryChip({required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Chip(
        label: Text(label, style: const TextStyle(color: Colors.white)),
        backgroundColor: Colors.grey[800],
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;
  const SectionHeader({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}

class ListenAgainGrid extends StatelessWidget {
  const ListenAgainGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 1.6,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(6, (index) {
          return Container(
            margin: const EdgeInsets.all(8.0),
            color: Colors.grey[850],
            child: const Center(
              child: Icon(Icons.play_arrow, color: Colors.white),
            ),
          );
        }),
      ),
    );
  }
}

class SamplesGrid extends StatelessWidget {
  const SamplesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 3,
        childAspectRatio: 0.7,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(6, (index) {
          return Container(
            margin: const EdgeInsets.all(8.0),
            color: Colors.grey[850],
            child: const Center(
              child: Text(
                'Sample',
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        }),
      ),
    );
  }
}
