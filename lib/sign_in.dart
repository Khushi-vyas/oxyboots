import 'package:flutter/material.dart';
import 'package:oxyboots/const.dart';
import 'package:oxyboots/components/custom_button.dart';
import 'package:oxyboots/components/heading.dart';
import 'package:oxyboots/home_page/home.dart';
import 'package:oxyboots/on_board_3.dart';
import 'package:oxyboots/recover_password.dart';
import 'package:oxyboots/sign_up.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            children: [
              SizedBox(height: 10),
              SizedBox(
                height: 30,
              ),
              Text(
                "Hello Again!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),
              Text(
                "Welcome back! You've been missed!",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.all(kPadding),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Email Address",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kPadding),
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "abcd@gmail.com",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              Heading(title: "Password"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kPadding),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(kPadding),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RecoverPassword()));
                    },
                    child: Text(
                      "Recover Password",
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(kPadding),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                          (Route<dynamic> route) => false);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        "Sign in",
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(kPadding),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignIn()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(kPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 30,
                              child: Image.asset("assets/google.png")),
                          SizedBox(width: 20),
                          Text(
                            "Sign in with Google",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
                child: Text(
                  "Don't have an account? Sign up for free",
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
