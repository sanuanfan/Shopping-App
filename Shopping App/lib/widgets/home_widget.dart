import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

import '../Screens/buy_screen.dart';

class home_widget extends StatelessWidget {
  List img = [
    'Latte',
    'Espresso',
    'Cold Coffee',
    'Black Coffee',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      childAspectRatio: (150 / 195),
      children: [
        for (int i = 0; i < img.length; i++)
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 13),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF212325),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 8)
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>buyScreen(img[i])));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      "assets/images/${img[i]}.png",
                      width: 120,
                      height: 120,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Text(
                        img[i],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          // backgroundColor: Colors.white
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Best coffee",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$30",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 244, 140, 5)),
                      ),
                      Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 244, 140, 5),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          )
      ],
    );
  }
}
