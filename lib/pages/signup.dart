import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, MyRoutes.loginPage);
        },
        child: Text("Logout"),
      )),
    );
  }
}
