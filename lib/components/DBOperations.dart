import 'package:sample/components/userClass.dart';
import 'package:sqflite/sqlite_api.dart';

class DBOperations {
  final Database database;

  DBOperations(this.database);

  Future<void> insertUser(String email, String username, int id) async {
    Map<String, Object> userMap = {
      "id": DateTime.now().millisecond,
      "email": email,
      "name": username,
    };

    await database.insert(
      "users",
      userMap,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<User>> users() async {
    final List<Map<String, dynamic>> maps = await database.query("users");
    return List.generate(
      maps.length,
      (i) {
        return User(
            email: maps[i]['email'],
            id: maps[i]["id"],
            username: maps[i]['name']);
      },
    );
  }
}
