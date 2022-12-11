import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  final Widget nextPage;
  final String text;
  final IconData iconData;

  const DrawerListTile(
      {Key? key,
      required this.nextPage,
      required this.text,
      required this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity(horizontal: -2, vertical: -2),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => nextPage),
        );
      },
      leading: Icon(
        iconData,
        size: 24,
        color: Colors.grey,
      ),
      title: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
      ),
    );
  }
}
