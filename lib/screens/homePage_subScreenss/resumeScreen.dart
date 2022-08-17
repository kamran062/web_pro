import 'package:flutter/material.dart';

import '../../constant/imageSlider.dart';

class ResumeScreen extends StatefulWidget {
  const ResumeScreen({Key? key}) : super(key: key);

  @override
  _ResumeScreenState createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.red,
                  height: sizeH * 0.25,
                  width: sizeW,
                  child: ComplicatedImageDemo(),
                ),
                Container(
                  // color: Colors.red,
                  height: sizeH * 0.32,
                  width: sizeW,
                  child: Image.asset(
                    "assets/images/flag-bangladesh.jpg",
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Text(
                  "（GH Internet Times Technology Group Resume Introduction）'\n\n\nGH Internet Times Technology Group was established in London, England in 2012, (hereinafter referred to as GH)\n\n\nAnd set up regional branches of the group in the United States, Thailand, the Philippines, Germany, Indonesia, Malaysia, etc.\n\n\nAnd in 2021, it will officially enter the Bangladesh market.\n\n\nGH APP is an online shopping promotion platform, with more than 1,000,000 partners from online shopping platforms such as daraz ajkerdeal clickbd and AMAZON in the world to ensure the benefits of GH Group and all online staff.\n\n\nAt present, the company is mainly recruiting Internet staff in the Bangladesh market to help online shopping platforms such as bikroy ajkerdeal clickbd AMAZON to increase their online store product sales and favorable ratings.\n\n\nGH platform online work only needs a mobile phone or a computer to complete. Simple operation, no time limit, work anywhere and earn commissions and suitable for all people.\n\n\nGH Corporation is the most accla",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Container(
                  // color: Colors.red,
                  height: sizeH * 0.3,
                  width: sizeW,
                  child: Image.asset(
                    "assets/images/resumSUbPic.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
                Text(
                  "1: The revenue operation method of the GH Group platform\n\n\nThe GH platform completes the task by receiving the product sales order volume task issued by the online shopping platform merchants, and then distributing it to the GH platform online staff.\n\n\nThe VIP online staff on the GH platform can get a certain commission after completing the product sales order tasks released by the merchants. The company relies on the order tasks released by the merchants to make profits. For example, the merchant's goods are priced at 1000BDT on the GH platform. GH company can get more than 8% of the profit, that is, more than 80BDT.\n\n\nGH needs a large number of online staff to help complete the sales tasks of commodity orders issued by the merchants. VIP online staff can get a part of the commission for completing a task, and the rest of the profits are the company's profit income and online staff bonus rewards.\n\n\n2: (The work deposit paid for opening VIP will be refunded after the expiry of the contract)\n\n\nThe work deposit paid for opening VIP will be refunded after you have worked for one year\n\n\nFor example: You paid the working deposit for VIP activation on January 1, 2020, and the VIP working deposit you paid for working on the GH platform until January 1, 2021 will be refunded to your GH account in the balance.\n\n\n'Any VIP level can enjoy this privilege'\n\n\n(The refunded VIP deposit will be returned to your GH account balance, and you can withdraw the refunded funds to your bank card account at any time or use the funds to continue to activate VIP for your GH account to continue working.)",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                )
              ],
            ),
          )),
    ));
  }
}
