// ignore_for_file: file_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          builder: (context, snapshot) {
            var showData = json.decode(snapshot.data.toString());
            return ListView.builder(
              itemCount: showData?.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    child: ListTile(
                      title: Text(
                        "${showData?[index]?['English']}",
                        style: GoogleFonts.comfortaa(
                            fontSize: 22, color: Colors.redAccent),
                      ),
                      trailing: Text(
                        "${showData?[index]?['Turkish']}",
                        style: GoogleFonts.comfortaa(fontSize: 18),
                      ),
                    ),
                  ),
                );
              },
            );
          },
          future: DefaultAssetBundle.of(context)
              .loadString("assets/kelimeler.json"),
        ),
      ),
    );
  }
}
