import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class home_bar extends StatelessWidget {
  const home_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                size: 35,
                color: Color.fromARGB(255, 244, 140, 5),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                size: 35,
                color: Colors.white.withOpacity(0.6),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                size: 35,
                color: Colors.white.withOpacity(0.6),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person,
                size: 35,
                color: Colors.white.withOpacity(0.6),
              ),
            )
          ],
        ),
      ),
    );
  }
}
