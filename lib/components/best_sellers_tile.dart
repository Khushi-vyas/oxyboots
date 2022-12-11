import 'package:flutter/material.dart';
import 'package:oxyboots/const.dart';
import 'package:oxyboots/data_models/shoes_data_model.dart';
import 'package:oxyboots/details.dart';
import 'package:simple_shadow/simple_shadow.dart';

class BestSellerTile extends StatelessWidget {
  final Shoe shoe;
  const BestSellerTile({Key? key, required this.shoe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Details(
              shoe: shoe,
            ),
          ),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.45,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(kPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SimpleShadow(
                    opacity: 0.3,
                    offset: Offset(10, 16),
                    sigma: 10,
                    child: Image.asset("assets/Shoe4.png")),
              ),
              Text(
                "BEST SELLER",
                style: TextStyle(color: blue),
              ),
              SizedBox(height: 5),
              Text(
                "Nike Air Force",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(
                "Men's Shoes",
                style: TextStyle(fontWeight: FontWeight.w200),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "\$493.00",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  SizedBox(width: 5),
                  CircleAvatar(
                    radius: 6,
                    backgroundColor: Colors.yellow,
                  ),
                  SizedBox(width: 5),
                  CircleAvatar(
                    radius: 6,
                    backgroundColor: Colors.blue,
                  ),
                  SizedBox(width: 5),
                  CircleAvatar(
                    radius: 6,
                    backgroundColor: Colors.red,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
