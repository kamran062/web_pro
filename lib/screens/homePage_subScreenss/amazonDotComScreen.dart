import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:web_proj_mohsina/constant/taskCardAmazon.dart';

class AmazonDotComScreen extends StatefulWidget {
  const AmazonDotComScreen({Key? key}) : super(key: key);

  @override
  _AmazonDotComScreenState createState() => _AmazonDotComScreenState();
}

class _AmazonDotComScreenState extends State<AmazonDotComScreen> {
  @override
  Widget build(BuildContext context) {
    var sizeH = MediaQuery.of(context).size.height;
    var sizeW = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xFFFAFAFA),
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onPressed: () {
                Get.back();
              },
            ),
            title: Text(
              "Task List",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          body: Padding(
            padding: EdgeInsets.only(left: sizeW * 0.01, right: sizeW * 0.01),
            child: Container(
              height: sizeH,
              width: sizeW,
              child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        TaskCardAmazon(
                          title1Card: "commodity price      BDT 1000",
                          title2Card: "pay commission",
                          title3Card: "BDT 25",
                          titleCard:
                              "Fisher Price 3-in-1 Infant Deluxe Gift Pack Multicolor",
                          imgCard: "assets/images/aquerium.jpg",
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    );
                  }),
            ),
          )),
    );
  }
}
