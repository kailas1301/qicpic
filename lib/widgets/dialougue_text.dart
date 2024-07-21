import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadingTextWidget extends StatelessWidget {
  const HeadingTextWidget({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.roboto(
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

class SubHeadingTextWidget extends StatelessWidget {
  const SubHeadingTextWidget({
    super.key,
    required this.title,
    this.textColor,
    this.textsize,
    this.fontWeight,
  });

  final String title;
  final Color? textColor;
  final double? textsize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.openSans(
        fontSize: textsize ?? 16,
        fontWeight: fontWeight,
        color: textColor,
      ),
      softWrap: true, // Ensures text wraps to the next line
      maxLines: null, // Allows text to span as many lines as needed
      overflow: TextOverflow.visible, // Ensures overflowing text is visible
    );
  }
}
