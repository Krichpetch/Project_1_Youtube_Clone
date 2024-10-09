import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterBtn extends StatelessWidget {
  const FilterBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(15.0),
                      margin:
                        const EdgeInsetsDirectional.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12.0)
                    ),
                    child: Center(child: Text("Sign In", style: GoogleFonts.roboto(),)),
                    ),
                  );
  }
}