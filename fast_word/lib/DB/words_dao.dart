// ignore_for_file: prefer_collection_literals

import 'package:fast_word/DB/database_helper.dart';
import 'package:fast_word/DB/words.dart';

class WordsDao {
  Future<List<Words>> tumWordsler() async {
    var db = await VeritabaniYardimcisi.veritabaniErisim();

    List<Map<String, dynamic>> maps = await db.rawQuery("SELECT * FROM words");
    return List.generate(maps.length, (index) {
      var satir = maps[index];
      return Words(satir["wordId"], satir["wordName"], satir["wordNameTwo"]);
    });
  }

  Future<void> wordEkle(String wordName, String wordNameTwo) async {
    var db = await VeritabaniYardimcisi.veritabaniErisim();
    var bilgiler = Map<String, dynamic>();
    bilgiler["wordName"] = wordName;
    bilgiler["wordNameTwo"] = wordNameTwo;

    await db.insert("words", bilgiler);
  }

  Future<void> wordSil(int wordId) async {
    var db = await VeritabaniYardimcisi.veritabaniErisim();
    await db.delete("words",where: "wordId = ?",whereArgs: [wordId]);

  }
}
