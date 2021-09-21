import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget grammerCard(String text) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 70,
        width: 400,
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.comfortaa(fontSize: 20),
            ),
          ),
        ),
      ),
    );
