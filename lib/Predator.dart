import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Predator extends StatefulWidget {
  @override
  _PredatorState createState() => _PredatorState();
}

class _PredatorState extends State<Predator> {
  void openurl() {
    try {
      String url = "https://github.com/Akash701";
      launch(url);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.black26,
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                    height: 30,
                    margin: EdgeInsets.only(right: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "5",
                          style: TextStyle(color: Colors.black),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[700],
                        )
                      ],
                    )),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 300,
              width: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 300,
                            height: 300,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                shape: BoxShape.rectangle,
                                image: DecorationImage(
                                    image: AssetImage(
                                      'images/pradator.jpg',
                                    ),
                                    fit: BoxFit.fill)),
                          ),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: Container(
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(right: 20),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite_rounded,
                                  size: 30,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          "Acer Predator Helios 300 Gaming Laptop",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          'Acer Predator Helios 300 Gaming Laptop, 15.6" Full HD IPS, Intel i7 CPU, 16GB DDR4 RAM, 256GB SSD, GeForce GTX 1060-6GB, VR Ready, Red Backlit KB, Metal Chassis, Windows 10 64-bit, G3-571-77QK....',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: TextButton(
                          onPressed: openurl,
                          child: Row(
                            children: [
                              Text(
                                'See More Detail',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.deepOrange,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.deepOrange,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(right: 25),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.redAccent,
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Add To Cart",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  height: 400,
                  decoration: BoxDecoration(
                    color: Color(0xFFD3D9DB),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
