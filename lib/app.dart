import 'package:flutter/material.dart';
import 'package:sample/components/DBOperations.dart';
import 'package:sample/components/userClass.dart';
import 'package:sample/pages/HomePageScreen.dart';
import 'package:sample/pages/LoginScreen.dart';
import 'package:sample/pages/SignupScreen.dart';
import 'package:sqflite/sqlite_api.dart';

class MyApp extends StatelessWidget {
  // var userExist = true;
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: false ? "/home" : "/login",
        routes: {
          "/signup": (context) => SignupScreen(),
          "/login": (context) => LoginScreen(),
          "/home": (context) => HomePageScreen()
        });
  }
}
