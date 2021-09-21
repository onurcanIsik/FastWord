// ignore_for_file: file_names, avoid_print

import 'package:fast_word/DB/words.dart';
import 'package:fast_word/DB/words_dao.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class MyWord extends StatefulWidget {
  const MyWord({Key? key}) : super(key: key);

  @override
  _MyWordState createState() => _MyWordState();
}

class _MyWordState extends State<MyWord> {
  @override
  void initState() {
    super.initState();
    printTumTodo();
  }

  var date = DateFormat("dd-mm-yyyy").format(DateTime.now());

  Future<void> ekle(String wordName, String wordNameTwo) async {
    await WordsDao().wordEkle(wordName, wordNameTwo);
  }

  Future<void> sil(int wordId) async {
    await WordsDao().wordSil(wordId);
  }

  Future<void> printTumTodo() async {
    var tumTodo = await WordsDao().tumWordsler();

    for (Words index in tumTodo) {
      print("*****");
      print("todo_id : ${index.wordId}");
      print("todo_name : ${index.wordName}");
      print("todoCalendar : ${index.wordNameTwo}");
    }
  }

  Future<List<Words>> tumNotlar() async {
    var listNote = await WordsDao().tumWordsler();
    return listNote;
  }

  TextEditingController enController = TextEditingController();
  TextEditingController trController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          floatingActionButton: SizedBox(
            width: 70,
            height: 70,
            child: FloatingActionButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                      title: Text(
                        "Kelime Ekle",
                        style: GoogleFonts.comfortaa(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      actions: [
                        Form(
                          key: formKey,
                          child: Column(
                            children: [
                              TextFormField(
                                controller: enController,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        const BorderSide(color: Colors.red),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        const BorderSide(color: Colors.amber),
                                  ),
                                  labelText: "En Word",
                                  labelStyle:
                                      const TextStyle(color: Colors.black87),
                                ),
                                style: GoogleFonts.comfortaa(),
                                validator: (index) {
                                  if (index!.isEmpty) {
                                    return "Cannot be left blank";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              const SizedBox(height: 10),
                              TextFormField(
                                controller: trController,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        const BorderSide(color: Colors.red),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        const BorderSide(color: Colors.amber),
                                  ),
                                  labelText: "Tr Word",
                                  labelStyle:
                                      const TextStyle(color: Colors.black87),
                                ),
                                style: GoogleFonts.comfortaa(),
                                validator: (index) {
                                  if (index!.isEmpty) {
                                    return "Cannot be left blank";
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              const SizedBox(height: 15),
                              Container(
                                height: 40,
                                width: 120,
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(16),
                                  boxShadow: const [
                                    BoxShadow(
                                      offset: Offset(2, 3),
                                      blurRadius: 3,
                                      spreadRadius: 2,
                                      color: Colors.black87,
                                    ),
                                  ],
                                ),
                                child: TextButton(
                                  child: Text(
                                    "Save",
                                    style: GoogleFonts.comfortaa(
                                      fontSize: 23,
                                      color: Colors.black,
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (formKey.currentState!.validate()) {
                                        ekle(enController.text,
                                            trController.text);
                                        enController.clear();
                                        trController.clear();
                                        Navigator.pop(context);
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                              content: Text('Boş Bırakmayın')),
                                        );
                                      }
                                    });
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              backgroundColor: Colors.amberAccent,
              child: const Icon(
                Icons.add_task_rounded,
                size: 40,
                color: Colors.black87,
              ),
            ),
          ),
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
                const SizedBox(width: 50),
                Text(
                  "FW",
                  style:
                      GoogleFonts.pacifico(fontSize: 22, color: Colors.black),
                ),
                const SizedBox(width: 20),
                Text(
                  "My Word",
                  style: GoogleFonts.comfortaa(
                      fontWeight: FontWeight.bold, color: Colors.black87),
                ),
                const SizedBox(width: 40),
                Text(
                  date.toString(),
                  style: GoogleFonts.comfortaa(
                    fontSize: 15,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
          body: FutureBuilder<List<Words>>(
            future: tumNotlar(),
            builder: (context, snapshot) {
              var n1 = snapshot.data;
              return ListView.builder(
                itemCount: n1?.length,
                itemBuilder: (context, index) {
                  var list = n1?[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                              title: Center(
                                child: Text(
                                  "FW",
                                  style: GoogleFonts.pacifico(
                                      color: Colors.amber, fontSize: 26),
                                ),
                              ),
                              actions: [
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "${list?.wordName}",
                                          style: GoogleFonts.comfortaa(
                                              fontSize: 26,
                                              color: Colors.amber),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "${list?.wordNameTwo}",
                                          style: GoogleFonts.comfortaa(
                                            fontSize: 26,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.amber,
                                            borderRadius:
                                                BorderRadius.circular(18),
                                          ),
                                          width: 70,
                                          height: 40,
                                          child: TextButton(
                                            child: Text(
                                              "Back",
                                              style: GoogleFonts.comfortaa(
                                                fontSize: 16,
                                                color: Colors.black87,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.amber,
                                            borderRadius:
                                                BorderRadius.circular(18),
                                          ),
                                          width: 70,
                                          height: 40,
                                          child: TextButton(
                                            child: Text(
                                              "Delete",
                                              style: GoogleFonts.comfortaa(
                                                fontSize: 16,
                                                color: Colors.black87,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                sil(list!.wordId!);
                                              });
                                              Navigator.pop(context);
                                            },
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            );
                          },
                        );
                      },
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${list?.wordName}",
                                style:
                                    GoogleFonts.comfortaa(color: Colors.amber),
                              ),
                              Text(
                                "${list?.wordNameTwo}",
                                style: GoogleFonts.comfortaa(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
