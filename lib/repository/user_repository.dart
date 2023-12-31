import 'package:quiz/models/user_model.dart';
import 'db_repository.dart';

class UserRepository {
  Future insertUser(Map<String, dynamic> user) async {
    final db = await DbRepository().database;
    await db.insert('users', user);
  }

  Future<bool> checkIfUserExist(String email) async {
    final db = await DbRepository().database;
    String sqluser = 'users WHERE email = \'$email\'';
    final List<Map<String, dynamic>> maps = await db.query(sqluser);
    return maps.isNotEmpty ? true : false;
  }

  //get current user
  Future<List<Map<String, dynamic>>> getCurrentUser() async {
    final db = await DbRepository().database;
    String sqluser = 'users WHERE loginStatus = 1';
    return await db.query(sqluser);
  }

  Future updateUserLoginStatus(UserModel user) async {
    final db = await DbRepository().database;
    UserModel updatedUser = UserModel(
        name: user.name,
        email: user.email,
        password: user.password,
        loginStatus: !user.loginStatus,
        exp: user.exp,
        lvl: user.lvl,
        coin: user.coin,
        gems: user.gems,
        imagePath: user.imagePath);

    await db.update(
      'users',
      updatedUser.toMap(),
      where: 'email = ?',
      whereArgs: [user.email],
    );
  }

  Future<List<Map<String, dynamic>>> searchUser(String email) async {
    final db = await DbRepository().database;
    String sqluser = 'users WHERE email = \'$email\'';
    return await db.query(sqluser);
  }

  //for shop buying
  Future updateUser(UserModel user) async {
    final db = await DbRepository().database;

    await db.update(
      'users',
      user.toMap(),
      where: 'email = ?',
      whereArgs: [user.email],
    );
  }
}
