import 'package:day_2/Screens/Home_Page.dart';
import 'package:day_2/Screens/login_page.dart';
import 'package:day_2/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily
      ),
      routes: {
        "/":(context) => loginPage(),
        MyRoutes.home:(context) => homepage(),
        MyRoutes.login:(context) => loginPage()
      },
      initialRoute: MyRoutes.login,
    );
  }
}