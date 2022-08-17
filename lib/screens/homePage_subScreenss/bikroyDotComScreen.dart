import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../constant/taskCardBikroy.dart';

class BikRoyDotComScreen extends StatefulWidget {
  const BikRoyDotComScreen({Key? key}) : super(key: key);

  @override
  _BikRoyDotComScreenState createState() => _BikRoyDotComScreenState();
}

class _BikRoyDotComScreenState extends State<BikRoyDotComScreen> {
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
                        TaskCardBikroy(
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
