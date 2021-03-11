import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  signUp(BuildContext context) async {
    if(_formKey.currentState.validate()){
      setState(() {
      changeButton = true;
    });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.signUpPage);
    setState(() {
      changeButton = false;
    });

    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Form(
        key: _formKey,
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
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Username cannot be empty";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      username = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter password", labelText: "Password"),
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Password cannot be empty";
                        } else if (value.length < 6) {
                          return "Password is too short , it should be altleast 6";
                        }
                        return null;
                      })
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
              },
            ),
            SizedBox(
              height: 15,
            ),
            Material(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(changeButton ? 40 : 20),
              child: InkWell(
                  onTap: () {
                    signUp(context);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    height: 40,
                    width: changeButton ? 80 : 150,
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
                  )),
            ),
          ],
        ),
      ),
    ));
  }
}
