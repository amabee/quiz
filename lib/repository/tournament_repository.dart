import 'package:quiz/models/running_tournament_model.dart';
import 'db_repository.dart';

class TournamentRepository {
  Future createTournamentTable() async {
    final db = await DbRepository().database;
    String id = 'id INTEGER PRIMARY KEY AUTOINCREMENT';
    String title = 'title TEXT NOT NULL';
    String time = 'time TEXT NOT NULL';
    String prize = 'prize TEXT NOT NULL';
    String color = 'color TEXT NOT NULL';

    String sqlTournament =
        'CREATE TABLE IF NOT EXISTS tournament($id, $title, $time, $prize, $color)';
    db.execute(sqlTournament);
  }

  Future addTournament(
      List<RunningTournamentModel> runningTournamentList) async {
    final db = await DbRepository().database;

    final List<String> colors = [
      '0xFF0F71BA',
      '0xFF51952E',
      '0xFFD8C70A',
      '0xFF878787',
      '0xFF212D61',
    ];

    for (int i = 0; i < runningTournamentList.length; i++) {
      runningTournamentList[i].color = colors[i];
      await db.insert('tournament', runningTournamentList[i].toMap());
    }
  }

  Future<List<Map<String, dynamic>>> loadTournament() async {
    final db = await DbRepository().database;
    final List<Map<String, dynamic>> maps = await db.query('tournament');

    final List<RunningTournamentModel> runningTournamentList = [
      RunningTournamentModel(
          title: 'CRIM MEGA QUIZ',
          time: '3 Days',
          prize: '1000 Diamonds!',
          color: ''),
      RunningTournamentModel(
          title: 'CRIM MEGA QUIZ 2',
          time: '3 Days',
          prize: '30000 Coins!',
          color: ''),
      RunningTournamentModel(
          title: 'CRIM SMALL QUIZ',
          time: 'Permanent',
          prize: '20000 Coins!',
          color: ''),
      RunningTournamentModel(
          title: 'CRIM FLASH QUIZ',
          time: '1 Hour',
          prize: '5000 Coins!',
          color: ''),
    ];

    if (maps.isNotEmpty) {
      return maps;
    } else {
      await addTournament(runningTournamentList);
      return await loadTournament();
    }
  }
}
