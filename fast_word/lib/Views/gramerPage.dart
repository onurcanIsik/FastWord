// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, avoid_print
import 'package:fast_word/Widget/grammer_detail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GramerPage extends StatefulWidget {
  const GramerPage({Key? key}) : super(key: key);

  @override
  _GramerPageState createState() => _GramerPageState();
}

class _GramerPageState extends State<GramerPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            iconTheme: const IconThemeData(color: Colors.black87),
            leading: IconButton(
              icon: const Icon(Icons.keyboard_arrow_left),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            backgroundColor: Colors.amber,
            title: Row(
              children: [
                const SizedBox(width: 20),
                Text(
                  "FW",
                  style:
                      GoogleFonts.pacifico(fontSize: 22, color: Colors.black),
                ),
                const SizedBox(width: 20),
                Text(
                  "Basic Grammer",
                  style: GoogleFonts.comfortaa(
                      fontWeight: FontWeight.bold, color: Colors.black87),
                ),
              ],
            ),
          ),
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Text(
                    "Past Simple ---> Geçmiş Zaman",
                    style: GoogleFonts.comfortaa(
                      fontSize: 20,
                      color: Colors.redAccent,
                    ),
                  ),
                  expCard(),
                  Text(
                    "Present Simple ---> Geniş Zaman",
                    style: GoogleFonts.comfortaa(
                      fontSize: 20,
                      color: Colors.redAccent,
                    ),
                  ),
                  expCard2(),
                  Text(
                    "Present Continuous ---> Şimdiki Zaman",
                    style: GoogleFonts.comfortaa(
                      fontSize: 20,
                      color: Colors.redAccent,
                    ),
                  ),
                  expCard3(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
