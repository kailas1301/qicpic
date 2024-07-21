import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      style: GoogleFonts.mukta(
        fontSize: textsize ?? 16,
        fontWeight: fontWeight,
        color: textColor,
      ),
      softWrap: true,
      maxLines: null,
      overflow: TextOverflow.visible,
    );
  }
}
