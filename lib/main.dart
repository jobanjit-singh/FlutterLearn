import 'package:day_2/Screens/Home_Page.dart';
import 'package:day_2/Screens/login_page.dart';
import 'package:day_2/utils/routes.dart';
import 'package:day_2/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      routes: {
        "/": (context) => loginPage(),
        MyRoutes.home: (context) => homepage(),
        MyRoutes.login: (context) => loginPage()
      },
      initialRoute: MyRoutes.home,
    );
  }
}
