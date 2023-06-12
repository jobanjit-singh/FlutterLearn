import 'package:day_2/Screens/Home_Page.dart';
import 'package:day_2/Screens/login_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      routes: {
        "/":(context) => homepage(),
        "/home":(context) => homepage(),
        "/login":(context) => loginPage()
      },
      initialRoute: "/login",
    );
  }
}