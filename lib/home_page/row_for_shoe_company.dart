import 'package:flutter/material.dart';

import '../const.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> shoes = ["Nike", "Puma", "Jordan", "abcd", "xyzw"];
    return Padding(
      padding: const EdgeInsets.all(kPadding),
      child: SizedBox(
        width: double.infinity,
        height: 70,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: shoes.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.white,
                child: Text(
                  shoes[index],
                  style: const TextStyle(fontSize: 12, color: Colors.black),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
