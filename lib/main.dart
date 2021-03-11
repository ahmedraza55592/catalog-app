import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/homepage.dart';
import 'package:flutter_catalog/pages/loginpage.dart';
import 'package:flutter_catalog/pages/signup.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.purple,
          fontFamily: GoogleFonts.lato().fontFamily),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: MyRoutes.loginPage,
      routes: {
        MyRoutes.homePage: (context) => HomePage(),
        MyRoutes.signUpPage: (context) => SignUpPage(),
        MyRoutes.loginPage: (context) => LoginPage()
      },
      debugShowCheckedModeBanner: true,
    );
  }
}
