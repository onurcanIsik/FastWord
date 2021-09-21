// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.keyboard_arrow_left_outlined,
            ),
            onPressed: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const MyApp(),
              ),
            ),
          ),
          iconTheme: const IconThemeData(color: Colors.black87),
          centerTitle: true,
          backgroundColor: Colors.amber,
          title: Text(
            "FW Info",
            style: GoogleFonts.pacifico(
              fontSize: 25,
              color: Colors.black87,
            ),
          ),
        ),
        body: Center(
          child: Wrap(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  """Bu Uygulamanın amacı size temel ve kullanışlı kelimeleri ve grameri öğretmektir.Kolay bir arayüz ve basit anlatımlar ile sizlere sunulmuştur. Geri dönüşleriniz bizim için çok önemlidir. Şimdiden iyi Öğrenmeler dileriz :)""",
                  style:
                      GoogleFonts.comfortaa(color: Colors.amber, fontSize: 22),
                ),
              ),
              Center(
                child: Text(
                  "FW",
                  style: GoogleFonts.pacifico(fontSize: 25),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
