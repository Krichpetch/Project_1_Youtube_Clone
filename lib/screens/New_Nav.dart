import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../components/two_rows_list.dart';
import '../components/filter_bar_btn.dart';
import '../components/catagory_chip.dart';

class DynamicAppbar extends StatefulWidget {
  const DynamicAppbar({super.key});
  @override
  State<DynamicAppbar> createState() => _DynamicAppbarState();
}

class _DynamicAppbarState extends State<DynamicAppbar> {
  late ScrollController _scrollController;
  bool lastStatus = true;
  double height = 120;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_isShrink != lastStatus) {
      setState(() {
        lastStatus = _isShrink;
      });
    }
  }

  bool get _isShrink {
    return _scrollController.hasClients &&
        _scrollController.offset > (height - kToolbarHeight);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const Drawer(),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              leading: Transform.scale(
                scale: 0.68,
                child: Image.asset('assets/icons/YT_Music_long_White.png'),
              ),
              automaticallyImplyLeading: false,
              leadingWidth: 125,
              // leading: _isShrink ? const BackButton() : null,
              pinned: true,
              backgroundColor: Colors.black,
              expandedHeight: height,
    
              flexibleSpace: const FlexibleSpaceBar(
                title: SingleChildScrollView(
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
            ))
          ],
          body: const CustomScrollView(
            slivers: [
              TwoRowsList(),
              TwoRowsList(),
              TwoRowsList(),
            ],
          ),
        ),
      ),
    );
  }
}
