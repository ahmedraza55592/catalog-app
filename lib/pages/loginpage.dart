import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/form.png",
            fit: BoxFit.cover,
            // height: 700,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Welcome to Login Page",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.purple[900]),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 18.0, vertical: 30.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter your name", labelText: "User Name"),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter password", labelText: "Password"),
                )
              ],
            ),
          ),
          ElevatedButton(
            child: Text(
              "Login",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            style: TextButton.styleFrom(minimumSize: Size(300, 45)),
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.homePage);
              print("Print something else");
            },
          )
        ],
      ),
    ));
  }
}
