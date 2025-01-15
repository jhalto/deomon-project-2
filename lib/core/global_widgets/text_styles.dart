import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

robortoStyles([double? fs, Color? color, FontWeight? fw]) {
  return GoogleFonts.roboto(
    fontSize: fs,
    color: color,
    fontWeight: fw,
  );
}

poppinsStyles(
    [double? fs, Color? color, FontWeight? fw, bool underline = false]) {
  return GoogleFonts.poppins(
    fontSize: fs,
    color: color,
    fontWeight: fw,
    decoration: underline ? TextDecoration.underline : TextDecoration.none,
  );
}
