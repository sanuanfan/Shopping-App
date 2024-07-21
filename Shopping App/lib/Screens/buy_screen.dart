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
                padding: EdgeInsets.only(left: 25),
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
                      Container(
                        width: MediaQuery.of(context).size.width,
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white.withOpacity(0.6),
                          
                        ),
                        child: Row(
                          children: [
                            IconButton(onPressed: () {}, icon: Icon(Icons.abc))
                          ],
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
