import 'dart:ui';

import 'package:day_2/utils/routes.dart';
import 'package:flutter/material.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Image.asset("assets/images/login.png",),
            SizedBox(
              height: 20,
            ),
            Text("Welcome to Flutter",
              style: TextStyle(
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
                fontSize: 24),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username"
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, MyRoutes.home);
                    },
                    child: Text("Login"),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(600, 40),
                      elevation: 4,
                    )
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