import 'package:flutter/material.dart';
import 'package:oxyboots/const.dart';
import 'package:oxyboots/data_models/shoes_data_model.dart';
import 'package:oxyboots/details.dart';
import 'package:simple_shadow/simple_shadow.dart';

class FavoriteShoes extends StatelessWidget {
  final Shoe shoe;
  const FavoriteShoes({Key? key, required this.shoe}) : super(key: key);

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
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: GestureDetector(
                  onTap: () {
                    //Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.favorite_outline,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: SimpleShadow(
                      opacity: 0.3,
                      offset: Offset(10, 16),
                      sigma: 10,
                      child: Image.asset(shoe.image),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "BEST SELLER",
                    style: TextStyle(color: blue),
                  ),
                  SizedBox(height: 5),
                  Text(
                    shoe.name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          shoe.price,
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
            ],
          ),
        ),
      ),
    );
  }
}
