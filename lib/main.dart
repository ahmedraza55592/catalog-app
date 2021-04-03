import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/homepage.dart';
import 'package:flutter_catalog/pages/loginpage.dart';
import 'package:flutter_catalog/pages/signup.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:flutter_catalog/widgets/theme.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homePage,
      routes: {
        MyRoutes.homePage: (context) => HomePage(),
        MyRoutes.signUpPage: (context) => SignUpPage(),
        MyRoutes.loginPage: (context) => LoginPage()
      },
      debugShowCheckedModeBanner: true,
    );
  }
}
