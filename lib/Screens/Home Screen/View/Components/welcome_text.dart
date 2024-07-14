import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget welcomeText() {
  return Text(
    "welcome!",
    style: GoogleFonts.jetBrainsMono(
      fontSize: 40,
      color: Colors.white,
    ),
  );
}