import 'package:flutter/material.dart';

import '../const.dart';

class BlueButton extends StatelessWidget {
  final String title;
  final Widget page;
  const BlueButton({Key? key, required this.title, required this.page})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          title,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
