import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_cool_profile/constant/constant.dart';
import '../components/two_rows_list.dart';
import '../components/filter_bar_btn.dart';
import 'package:google_fonts/google_fonts.dart';

class BlankScreen extends StatelessWidget {
  const BlankScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              
              backgroundColor: themePrimary,
              leading: Column(
                children: [
                  const SizedBox(height: 5,),
                  Padding(
                  
                    padding: EdgeInsets.fromLTRB(7.0, 7.0, 7.0, 7.0),
                    child: Container(
                      margin: const EdgeInsets.only(left: 7.0),
                      // backgroundImage: AssetImage('assets/icons/YT_Music.png'),
                      height: 20,
                      width: 20,
                      child: Image.asset('assets/icons/YT_Music.png'),
                    ),
                  ),
                ],
              ),
              title: Text(
                "Music",
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              expandedHeight: 125,
              pinned: true,
              flexibleSpace:  FlexibleSpaceBar(
                background: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      color: Colors.green,
                      height: 50, 
                      child: const Row(
                        
                        children: [
                          FilterBtn(),
                          FilterBtn(),
                          FilterBtn(),
                          FilterBtn(),
                          FilterBtn(),
                          FilterBtn(),
                          FilterBtn(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const TwoRowsList(),
            const TwoRowsList(),
            const TwoRowsList(),
          ],
        ));
  }
}
