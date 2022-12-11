import 'package:flutter/material.dart';
import 'package:oxyboots/const.dart';
import 'package:simple_shadow/simple_shadow.dart';

class BestChoiceShoes extends StatelessWidget {
  const BestChoiceShoes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(kPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "BEST CHOICE",
                    style: TextStyle(color: blue),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Nike Air Jordan",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(kPadding),
                    child: Text(
                      "\$493.00",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            SimpleShadow(
              opacity: 0.3,
              offset: Offset(10, 16),
              sigma: 10,
              child: Image.asset(
                "assets/Shoe2.png",
                width: MediaQuery.of(context).size.width * 0.4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
