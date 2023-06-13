import 'dart:ui';

import 'package:day_2/utils/routes.dart';
import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String name = "";
  bool clicked = false;

  final _formKey = GlobalKey<FormState>();

  goToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      clicked = true;
      setState(() {});
      await Future.delayed(Duration(seconds: 2));
      await Navigator.pushNamed(context, MyRoutes.home);
      clicked = false;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              Image.asset(
                "assets/images/login.png",
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome $name",
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
                          hintText: "Enter Username", labelText: "Username"),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return "Username should not be empty";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return "Password should not be empty";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(clicked ? 40 : 10),
                      color: Colors.deepPurple,
                      child: InkWell(
                        onTap: () => goToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 2),
                          width: 200,
                          height: 40,
                          alignment: Alignment.center,
                          child: clicked
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
