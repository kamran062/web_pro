import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAccountScreen extends StatefulWidget {
  const MyAccountScreen({Key? key}) : super(key: key);

  @override
  _MyAccountScreenState createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  @override
  Widget build(BuildContext context) {
    var sizeH = MediaQuery.of(context).size.height;
    var sizeW = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      body: Container(
        height: sizeH,
        width: sizeW,
        child: Stack(
          children: [
            Container(
              height: sizeH * 0.3,
              width: sizeW,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                  color: Colors.blue),
              child: Column(
                children: [
                  Text(
                    "My Superior:28771",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: sizeH * 0.06,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: sizeW * 0.03,
                      ),
                      CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/profilePic1.jpeg"),
                        radius: 30,
                      ),
                      SizedBox(
                        width: sizeW * 0.03,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Account:",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                              SizedBox(
                                width: sizeW * 0.01,
                              ),
                              Text(
                                "1715344645",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Your identity:",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                              SizedBox(
                                width: sizeW * 0.01,
                              ),
                              Text(
                                "VIP0",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Invitation code：",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                              SizedBox(
                                width: sizeW * 0.01,
                              ),
                              Text(
                                "1759526",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Positioned(
                left: sizeW * 0.05,
                top: sizeH * 0.25,
                child: Container(
                  height: sizeH * 0.1,
                  width: sizeW * 0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                ))
          ],
        ),
      ),
    ));
  }
}
