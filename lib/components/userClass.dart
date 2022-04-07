import 'package:sample/components/DBOperations.dart';
import 'package:sqflite/sqlite_api.dart';

class User {
  final String email;
  final int id;
  final String username;
  // final Database database;

  const User({
    required this.email,
    required this.username,
    required this.id,
    // required this.database
  });
}
