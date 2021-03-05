import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "";
  bool changeButton = false;
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
            "Welcome user $username",
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
                  onChanged: (value) {
                    username = value;
                    setState(() {});
                  },
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
            style: TextButton.styleFrom(minimumSize: Size(150, 40)),
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.homePage);
              print("Print something else");
            },
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
              onTap: () async {
                setState(() {
                  changeButton = true;
                });
                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, MyRoutes.signUpPage);
                setState(() {
                  changeButton = false;
                });
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                height: 40,
                width: changeButton ? 40 : 150,
                alignment: Alignment.center,
                // color: Colors.black,
                child: changeButton
                    ? Icon(
                        Icons.done,
                        color: Colors.white,
                      )
                    : Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                        ),
                      ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(changeButton ? 40 : 7),
                ),
              )),
        ],
      ),
    ));
  }
}
