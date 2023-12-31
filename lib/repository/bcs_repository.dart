import 'package:quiz/models/bcs_model.dart';

import 'db_repository.dart';

class BcsRepository {
  Future createBcsTable() async {
    final db = await DbRepository().database;
    String id = 'id INTEGER PRIMARY KEY AUTOINCREMENT';
    String title = 'title TEXT NOT NULL';
    String questionNumber = 'questionNumber TEXT NOT NULL';
    String duration = 'duration TEXT NOT NULL';
    String price = 'price TEXT NOT NULL';
    String categoryId = 'categoryId INTEGER NOT NULL';

    String sqlBcs =
        'CREATE TABLE IF NOT EXISTS BCS($id, $title, $questionNumber, $duration, $price, $categoryId)';
    db.execute(sqlBcs);
  }

  Future addBcs(List<BcsModel> bcsList) async {
    final db = await DbRepository().database;

    for (BcsModel x in bcsList) {
      await db.insert('BCS', x.toMap());
    }
  }

  Future<List<Map<String, dynamic>>> loadBcs() async {
    final db = await DbRepository().database;
    final List<Map<String, dynamic>> maps = await db.query('BCS');

    final List<BcsModel> bcsList = [
      BcsModel(
          title: 'CLJ Model Test 1',
          questionNumber: '5',
          duration: '1',
          price: '10',
          categoryId: 1),
      BcsModel(
          title: 'BCS Model Test 2',
          questionNumber: '5',
          duration: '1',
          price: '10',
          categoryId: 1),
      BcsModel(
          title: 'BCS Model Test 3',
          questionNumber: '5',
          duration: '1',
          price: '10',
          categoryId: 1),
      BcsModel(
          title: 'CLJ Model Test 3',
          questionNumber: '5',
          duration: '2',
          price: '10',
          categoryId: 2),
    ];

    if (maps.isNotEmpty) {
      return maps;
    } else {
      await addBcs(bcsList);
      return await loadBcs();
    }
  }
}
