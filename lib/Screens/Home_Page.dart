import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {

    var days = "30 Days";
    return Scaffold(
      appBar: AppBar(title: Text("Day 2"),
      ),
      body: Center(
        child: Text("Welcome to Flutter $days Course"),
      ),
      drawer: Drawer(),
    );
  }
}