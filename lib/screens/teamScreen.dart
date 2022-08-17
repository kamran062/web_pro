import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TeamScreen extends StatefulWidget {
  const TeamScreen({Key? key}) : super(key: key);

  @override
  _TeamScreenState createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  @override
  Widget build(BuildContext context) {
    var sizeH = MediaQuery.of(context).size.height;
    var sizeW = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: sizeH,
        width: sizeW,
        color: Colors.blue,
      ),
    ));
  }
}
