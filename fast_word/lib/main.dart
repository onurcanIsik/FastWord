// ignore_for_file: unnecessary_const, avoid_print

import 'package:fast_word/Views/InfoPage.dart';
import 'package:fast_word/Views/gramerPage.dart';
import 'package:fast_word/Views/myWord.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Views/HomePage.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          drawer: Drawer(
            elevation: 5,
            child: ListView(
              children: [
                DrawerHeader(
                  child: Center(
                    child: Text(
                      "Fast Word",
                      style: GoogleFonts.pacifico(
                          fontSize: 40,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration:
                      const BoxDecoration(color: Colors.amber, boxShadow: [
                    BoxShadow(
                        blurRadius: 4,
                        color: Colors.amberAccent,
                        offset: Offset(0, 3),
                        spreadRadius: 2),
                  ]),
                ),
                ListTile(
                  title: SizedBox(
                    height: 50,
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MyApp(),
                        ),
                      ),
                      child: Card(
                        child: Center(
                          child: Text(
                            "A-Z Yaygın Kelimeler",
                            style: GoogleFonts.comfortaa(fontSize: 22),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: SizedBox(
                    height: 50,
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MyWord(),
                        ),
                      ),
                      child: Card(
                        child: Center(
                          child: Text(
                            "Kelimelerim",
                            style: GoogleFonts.comfortaa(fontSize: 22),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: SizedBox(
                    height: 50,
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const GramerPage(),
                        ),
                      ),
                      child: Card(
                        child: Center(
                          child: Text(
                            "Basit Gramerim",
                            style: GoogleFonts.comfortaa(fontSize: 22),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.black87),
            actions: [
              IconButton(
                onPressed: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const InfoPage(),
                  ),
                ),
                icon: const Icon(Icons.info),
              )
            ],
            elevation: 10,
            backgroundColor: Colors.amber,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(40),
                ),
                side: BorderSide()),
            centerTitle: true,
            title: Text(
              "FW",
              style: GoogleFonts.pacifico(
                fontSize: 25,
                color: Colors.black87,
              ),
            ),
          ),
          body: const HomePage(),
        ),
      ),
    );
  }
}
