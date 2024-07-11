import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Home_screen extends StatelessWidget {
  const Home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(top: 15),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.sort_rounded,
                      color: Colors.white.withOpacity(0.5),
                      size: 30,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white.withOpacity(0.5),
                      size: 30,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                child: Text(
                  "It is a great day to have a coffee..!",
                  style: TextStyle(
                      fontSize: 25, color: Colors.white.withOpacity(0.8)),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(55, 176, 174, 167),
              ),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white.withOpacity(0.8),
                    ),
                    hintText: "Find your coffee",
                    hintStyle: TextStyle(
                        color: Colors.white.withOpacity(0.5), fontSize: 20),
                    border: InputBorder.none),
              ),
            ),
            TabBar(tabs: [
              Tab(
                text: "HOT",
              ),
              Tab(
                text: "HOT",
              ),
              Tab(
                text: "HOT",
              ),
              Tab(
                text: "HOT",
              ),
            ]),
            SizedBox(
              height: 20,
            ),
            Center(
              child: [
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.red,
                )
              ][_tabController.index]
            )
          ],
        ),
      )),
    );
  }
}
