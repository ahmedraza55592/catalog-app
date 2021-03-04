import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/form.png"),
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
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 30.0),
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
          child: Text("Login"),
          onPressed: () {
            print("Printed");
          },
        )
      ],
    ));
  }
}
