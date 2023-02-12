import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RandomCategory extends StatelessWidget {
  final String category;

  const RandomCategory({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.only(bottom: 2.h, right: 1.w),
      shadowColor: Colors.grey.withOpacity(0.4),
      color: Colors.deepOrangeAccent.withOpacity(0.4),
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 5.w,
          vertical: 1.h,
        ),
        child: Text(
          category,
          style: GoogleFonts.jost(
            fontWeight: FontWeight.w800,
            fontSize: 0.3.dp,
          ),
        ),
      ),
    );
  }
}
