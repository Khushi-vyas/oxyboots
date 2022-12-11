import 'package:drop_shadow_image/drop_shadow_image.dart';
import 'package:flutter/material.dart';

import 'const.dart';
import 'sign_in.dart';

class OnBoard3 extends StatelessWidget {
  const OnBoard3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.all(kPadding),
            child: DropShadowImage(
              offset: Offset(5, 30),
              blurRadius: 25,
              image: Image.asset("assets/Shoe3.png"),
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(kPadding),
            child: Text(
              "Summer Shoes\nNike 2022",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(kPadding),
            child: Text(
              "Smart, Gorgeous & Fashionable Collection",
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 20,
              ),
            ),
          ),
          Spacer(),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.all(16),
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
                      MaterialPageRoute(builder: (context) => SignIn()),
                      (Route<dynamic> route) => false);
                },
                child: Padding(
                  padding: const EdgeInsets.all(kPadding),
                  child: Text(
                    "Get Started",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
