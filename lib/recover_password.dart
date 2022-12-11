import 'package:flutter/material.dart';
import 'package:oxyboots/const.dart';
import 'package:oxyboots/components/custom_back_button.dart';

import 'components/custom_button.dart';
import 'on_board_3.dart';

class RecoverPassword extends StatelessWidget {
  const RecoverPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: CustomBackButton(),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            "Recover password",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          ),
          Padding(
            padding: const EdgeInsets.all(kPadding),
            child: Text(
              "Please enter your email address to receive a verification code",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w300,
              ),
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
                filled: true,
                fillColor: Colors.white,
                hintText: "abcd@gmail.com",
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(kPadding),
            child: SizedBox(
                width: double.infinity,
                child: BlueButton(title: "Continue", page: OnBoard3())),
          ),
        ],
      ),
    );
  }
}
