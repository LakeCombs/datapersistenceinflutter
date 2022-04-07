import 'package:flutter/material.dart';
import 'package:sample/app.dart';
import 'package:sample/components/DBOperations.dart';
import 'package:sample/components/app_database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final db = await AppDatabase().initDB();

  await DBOperations(db)
      .insertUser('adesola@gmail.com', "lakeocms", DateTime.now().millisecond);

  var userExist = await DBOperations(db).users();

  runApp(const MyApp());
}
