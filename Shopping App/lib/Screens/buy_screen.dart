import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class buyScreen extends StatelessWidget {
  String img;
  buyScreen(this.img);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.only(top: 30, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Colors.white.withOpacity(0.6),
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Image.asset(
                  "assets/images/${img}.png",
                  width: MediaQuery.of(context).size.width / 1.2,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 25, right: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Best Coffee",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white.withOpacity(0.6),
                            letterSpacing: 3),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "$img",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    color: Colors.white.withOpacity(0.8))
                                // color: Colors.white.withOpacity(0.6),
                                ),
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      CupertinoIcons.minus,
                                      color: Colors.white,
                                      size: 20,
                                    )),
                                Text(
                                  "2",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      CupertinoIcons.add,
                                      color: Colors.white,
                                      size: 20,
                                    )),
                              ],
                            ),
                          ),
                          Text(
                            "\$30.6",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Coffee is a best antioxidants in the deit and it has may health benefits.",
                        style: TextStyle(
                            fontSize: 15, color: Colors.white.withOpacity(0.4)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            "Volume : ",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "100 ml ",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                // padding: EdgeInsets.all(15),
                                width: 200,
                                height: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromARGB(255, 106, 106, 104)),
                                child: Center(
                                  child: Text(
                                    "Add to cart",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white.withOpacity(0.8)),
                                  ),
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 238, 150, 7),
                                    borderRadius: BorderRadius.circular(20)),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite_border_outlined,
                                      color: Colors.white,
                                      size: 30,
                                    )),
                              )
                            ],
                          ),
                        ),
                      )
                    ]),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
