import 'package:drop_shadow_image/drop_shadow_image.dart';
import 'package:flutter/material.dart';
import 'package:oxyboots/on_board_3.dart';

import 'const.dart';

class OnBoard2 extends StatelessWidget {
  const OnBoard2({Key? key}) : super(key: key);

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
              image: Image.asset("assets/Shoe2.png"),
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(kPadding),
            child: Text(
              "Follow Latest\nStyle Shoes",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(kPadding),
            child: Text(
              "There are many beautiful and attractive plants to your room",
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OnBoard3()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(kPadding),
                  child: Text(
                    "Next",
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
