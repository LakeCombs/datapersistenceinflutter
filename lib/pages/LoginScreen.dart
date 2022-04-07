import 'dart:html';

import 'package:flutter/material.dart';
import 'package:sample/components/DBOperations.dart';
import 'package:sample/components/app_database.dart';
import 'package:sample/pages/SignupScreen.dart';

class LoginScreen extends StatelessWidget {
  final emailController = TextEditingController();
  final PasswordCredential = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100.0,
            ),
            // CircleAvatar(
            //   radius: 100.0,
            //   backgroundColor: Colors.blue,
            // ),
            SizedBox(
              height: 200.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 50, right: 50),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your email",
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your password",
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, "/home"),
                    child: Expanded(
                      child: Center(
                        child: Text("Login"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("don't have an account"),
                      SizedBox(
                        width: 3,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignupScreen(),
                              ),
                            );
                          },
                          child: Text("Sign up",
                              style: TextStyle(color: Colors.blue)))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
