import 'dart:ui';

import 'package:flutter/material.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Center(
        child: Text(
          "Login Page",
          style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,color: Colors.brown),
          )
          ),
      drawer: Drawer(),
    );
  }
}