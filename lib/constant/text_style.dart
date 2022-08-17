import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Constants {
  static const regularHeadingTextForMob =
      TextStyle(fontWeight: FontWeight.w600, color: Colors.black);
  static const regularHeadingTextForTab =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 16);
  static const regularHeadingTextForDesktop =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 18);

  static const mainHeadingTextForMob =
      TextStyle(fontWeight: FontWeight.w800, color: Colors.black, fontSize: 18);
  static const mainHeadingTextForTab =
      TextStyle(fontWeight: FontWeight.w800, fontSize: 20);
  static const mainHeadingTextForDesktop =
      TextStyle(fontWeight: FontWeight.w800, fontSize: 22);
}

final emailText = TextEditingController();
final passwordText = TextEditingController();
