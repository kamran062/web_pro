import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskCardAmazon extends StatefulWidget {
  var imgCard;
  var titleCard;
  var title1Card;
  var title2Card;
  var title3Card;
  TaskCardAmazon(
      {Key? key,
      required this.imgCard,
      required this.title1Card,
      required this.title2Card,
      required this.title3Card,
      required this.titleCard})
      : super(key: key);

  @override
  _TaskCardAmazonState createState() => _TaskCardAmazonState();
}

class _TaskCardAmazonState extends State<TaskCardAmazon> {
  @override
  Widget build(BuildContext context) {
    var sizeH = MediaQuery.of(context).size.height;
    var sizeW = MediaQuery.of(context).size.width;
    return Card(
      child: Container(
        height: sizeH * 0.15,
        width: sizeW,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22), color: Colors.white),
        child: ListTile(
          leading: Container(
            color: Colors.red,
            height: sizeH * 0.3,
            child: Stack(
              children: [
                Container(
                  color: Colors.red,
                  height: sizeH * 0.6,
                  width: 100,
                  child: Image.asset(
                    widget.imgCard,
                    //    "assets/images/aquerium.jpg",
                    fit: BoxFit.cover,
                    // height: 100,
                  ),
                ),
                Positioned(
                  top: 40,
                  // left: 13,
                  child: Container(
                      color: Colors.black.withOpacity(.75),
                      height: sizeH * 0.03,
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Amazon",
                              style: TextStyle(
                                  fontSize: 12,
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          Spacer(),
                          Text("VIP0",
                              style: TextStyle(
                                  fontSize: 12,
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ],
                      )),
                ),
                // Positioned(
                //   left: 10,
                //   child: Text("VIP0",
                //       style: TextStyle(
                //           fontSize: 12,
                //           // fontWeight: FontWeight.bold,
                //           color: Colors.white)),
                // )
              ],
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                widget.titleCard,
                // "Fisher Price 3-in-1 Infant Deluxe Gift Pack Multicolor",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              Text(
                widget.title1Card,
                // "commodity price      BDT 1000",
                style: TextStyle(
                    fontSize: 12, color: Colors.black.withOpacity(.5)),
              ),
              Text(
                widget.title2Card,
                // "pay commission",
                style: TextStyle(
                    fontSize: 14, color: Colors.black.withOpacity(.5)),
              ),
            ],
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                widget.title3Card,
                // "BDT 25",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
