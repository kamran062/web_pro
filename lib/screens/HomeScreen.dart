import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_proj_mohsina/screens/homePage_subScreenss/amazonDotComScreen.dart';

import '../constant/imageSlider.dart';
import '../constant/text_style.dart';
import '../plat_form_details.dart';
import 'homePage_subScreenss/ajkerDealDotCom.dart';
import 'homePage_subScreenss/bikroyDotComScreen.dart';
import 'homePage_subScreenss/clickBdDotComScreen.dart';
import 'homePage_subScreenss/resumeScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var sizeH = MediaQuery.of(context).size.height;
    var sizeW = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
            child: Center(
          child: Text(
            "Language",
            style: isMobile(context)
                ? Constants.mainHeadingTextForMob
                : isTab(context)
                    ? Constants.regularHeadingTextForTab
                    : Constants.regularHeadingTextForDesktop,
          ),
        )),
        leadingWidth: sizeW * 0.5,
        centerTitle: true,
        title: const Text(
          "GH",
          style: TextStyle(fontSize: 22, color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
                color: Color(0xFF0C99FF),
              ))
        ],
      ),
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
                  height: sizeH * 0.15,
                  width: sizeW,
                  child: Image.asset(
                    "assets/images/bannerWeb.png",
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: sizeW * 0.03, right: sizeW * 0.03),
                  child: Column(
                    children: [
                      Container(
                          height: sizeH * 0.1,
                          width: sizeW,
                          child: Row(
                            children: [
                              SizedBox(
                                width: sizeW * 0.03,
                              ),
                              InkWell(
                                onTap: () {
                                  Get.to(const ResumeScreen());
                                },
                                child: Container(
                                  color: Colors.white,
                                  height: sizeH * 0.07,
                                  width: sizeW * 0.44,
                                  child: Row(
                                    children: [
                                      const Text(
                                        "GH Company \nResume",
                                        style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                      Image.asset(
                                        "assets/images/resumeIcon.PNG",
                                        width: sizeW * 0.2,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: sizeW * 0.001,
                              ),
                              InkWell(
                                child: Container(
                                  color: Colors.white,
                                  height: sizeH * 0.07,
                                  width: sizeW * 0.45,
                                  child: Row(
                                    children: [
                                      const Text(
                                        "Invite Friends \nRewards",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                      Image.asset(
                                        "assets/images/rewardIcon.PNG",
                                        width: sizeW * 0.2,
                                      )
                                      // Column(
                                      //   children: [
                                      //
                                      //   ],
                                      // )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )),
                      Container(
                        height: sizeH * 0.07,
                        width: sizeW,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(44),
                            gradient: const LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: <Color>[
                                Color(0xFF0C99FF),
                                const Color(0xFF00DBFF),
                              ], // Gradient from https://learnui.design/tools/gradient-generator.html
                              tileMode: TileMode.mirror,
                            )),
                        child: const Center(
                          child: Text(
                            "APP Download",
                            style: const TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: sizeH * 0.01,
                      ),
                      Row(
                        children: [
                          const Text(
                            "Task hall",
                            style: const TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: sizeH * 0.01,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xFFFFE6E7),
                                    Color(0xFFFFCBCD)
                                  ]),
                              borderRadius: BorderRadius.circular(12)),
                          height: sizeH * 0.1,
                          width: sizeW,
                          child: ListTile(
                            onTap: () {
                              Get.to(const BikRoyDotComScreen(),
                                  transition: Transition.circularReveal,
                                  duration:
                                      const Duration(microseconds: 200000));
                            },
                            title: const Text(
                              "bikroy",
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            ),
                            subtitle: Text(
                              "bikroy",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.red.withOpacity(.5)),
                            ),
                            trailing: Image.asset(
                              "assets/images/bikroyCom.png",
                              width: 100,
                            ),
                          )),
                      SizedBox(
                        height: sizeH * 0.01,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    const Color(0xFFCBF3FF),
                                    Color(0xFFA6E9FD)
                                  ]),
                              borderRadius: BorderRadius.circular(12)),
                          height: sizeH * 0.1,
                          width: sizeW,
                          child: ListTile(
                            onTap: () {
                              Get.to(AjkerdealDotComScreen(),
                                  transition: Transition.circularReveal,
                                  duration:
                                      const Duration(microseconds: 200000));
                            },
                            title: const Text(
                              "ajkerdeal",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            ),
                            subtitle: Text(
                              "ajkerdeal",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.red.withOpacity(.5)),
                            ),
                            trailing: Image.asset(
                              "assets/images/ajkerDealCom.png",
                              width: 100,
                            ),
                          )),
                      SizedBox(
                        height: sizeH * 0.01,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    const Color(0xFFF3F1C4),
                                    Color(0xFFF6CA9B)
                                  ]),
                              borderRadius: BorderRadius.circular(12)),
                          height: sizeH * 0.1,
                          width: sizeW,
                          child: ListTile(
                            onTap: () {
                              Get.to(AmazonDotComScreen(),
                                  transition: Transition.circularReveal,
                                  duration:
                                      const Duration(microseconds: 200000));
                            },
                            title: const Text(
                              "Amazon",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            ),
                            subtitle: Text(
                              "Amazon",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.red.withOpacity(.5)),
                            ),
                            trailing: Image.asset(
                              "assets/images/amazonLogo.png",
                              width: 100,
                            ),
                          )),
                      SizedBox(
                        height: sizeH * 0.01,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    const Color(0xFFFAFAFA),
                                    const Color(0xFFDFDC9A)
                                  ]),
                              borderRadius: BorderRadius.circular(12)),
                          height: sizeH * 0.1,
                          width: sizeW,
                          child: ListTile(
                            onTap: () {
                              Get.to(ClickbdDotComScreen(),
                                  transition: Transition.circularReveal,
                                  duration:
                                      const Duration(microseconds: 200000));
                            },
                            title: const Text(
                              "clickbd",
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            ),
                            subtitle: Text(
                              "clickbd",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.red.withOpacity(.5)),
                            ),
                            trailing: Image.asset(
                              "assets/images/clickbdLogo.jpeg",
                              width: 130,
                            ),
                          )),
                      SizedBox(
                        height: sizeH * 0.01,
                      ),
                      Row(
                        children: [
                          const Text(
                            "Membership List",
                            style: const TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: sizeH * 0.01,
                      ),
                      Container(
                          height: sizeH * 0.4,
                          width: sizeW,
                          child: ListView(
                            controller: _scrollController,
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Column(
                                    children: [
                                      const ListTile(
                                          title: const Text(
                                              "Congratulations ****1667"),
                                          subtitle: Text(
                                              "complete 25 single task today and earn BDT2500!"),
                                          leading: const CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/images/profilePic1.jpeg"),
                                          )),
                                      const Divider(),
                                    ],
                                  )),
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Column(
                                    children: [
                                      const ListTile(
                                          title: const Text(
                                              "Congratulations ****2134"),
                                          subtitle: const Text(
                                              "complete 20 single task today and earn BDT2000!"),
                                          leading: const CircleAvatar(
                                            backgroundImage: const AssetImage(
                                                "assets/images/profiePic3.jpeg"),
                                          )),
                                      const Divider(),
                                    ],
                                  )),
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Column(
                                    children: [
                                      const ListTile(
                                          title: const Text(
                                              "Congratulations ****5742"),
                                          subtitle: Text(
                                              "complete 5 single task today and earn BDT1500!"),
                                          leading: const CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/images/profilePic4.jpeg"),
                                          )),
                                      const Divider(),
                                    ],
                                  )),
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Column(
                                    children: [
                                      const ListTile(
                                          title: const Text(
                                              "Congratulations ****6782"),
                                          subtitle: const Text(
                                              "complete 15 single task today and earn BDT6500!"),
                                          leading: const CircleAvatar(
                                            backgroundImage: const AssetImage(
                                                "assets/images/profilePic5.jpeg"),
                                          )),
                                      const Divider(),
                                    ],
                                  )),
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Column(
                                    children: [
                                      const ListTile(
                                          title: const Text(
                                              "Congratulations ****8867"),
                                          subtitle: Text(
                                              "complete 10 single task today and earn BDT2580!"),
                                          leading: CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/images/profilePic6.jpeg"),
                                          )),
                                      const Divider(),
                                    ],
                                  )),
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Column(
                                    children: [
                                      const ListTile(
                                          title: const Text(
                                              "Congratulations ****1875"),
                                          subtitle: const Text(
                                              "complete 35 single task today and earn BDT6100!"),
                                          leading: const CircleAvatar(
                                            backgroundImage: const AssetImage(
                                                "assets/images/profliePic7.jpeg"),
                                          )),
                                      const Divider(),
                                    ],
                                  )),
                            ],
                          ))
                    ],
                  ),
                )
              ],
            ),
          )),
    ));
  }
}
