import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shopping_app/widgets/home_widget.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({super.key});
  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
  }

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
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
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
            TabBar(
                labelColor: Colors.amber,
                controller: _tabController,
                unselectedLabelColor: Colors.white.withOpacity(0.5),
                isScrollable: true,
                indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(width: 3, color: Colors.amber),
                    insets: EdgeInsets.symmetric(horizontal: 15)),
                labelStyle:
                    TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                labelPadding: EdgeInsets.symmetric(horizontal: 20),
                tabs: [
                  Tab(
                    text: "HOT Coffee",
                  ),
                  Tab(
                    text: "Cold Coffee",
                  ),
                  Tab(
                    text: "Cappuccino",
                  ),
                  Tab(
                    text: "Americano",
                  ),
                ]),
            SizedBox(
              height: 20,
            ),
            Center(
                child: [
             home_widget(),
             home_widget(),
             home_widget(),
             home_widget()
            ][_tabController.index])
          ],
        ),
      )),
    );
  }
}
