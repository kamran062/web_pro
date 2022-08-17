import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class VIPScreen extends StatefulWidget {
  const VIPScreen({Key? key}) : super(key: key);

  @override
  _VIPScreenState createState() => _VIPScreenState();
}

class _VIPScreenState extends State<VIPScreen> {
  @override
  Widget build(BuildContext context) {
    var sizeH = MediaQuery.of(context).size.height;
    var sizeW = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text(
          "VIP area",
          style: TextStyle(fontSize: 22, color: Colors.black),
        ),
      ),
    );
  }
}
