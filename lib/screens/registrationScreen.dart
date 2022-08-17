import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/button.dart';
import '../constant/text_style.dart';
import '../plat_form_details.dart';
import 'loginScreen.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<RegistrationPage> {
  bool _isObscure = true;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    final NumberText = TextEditingController();
    final passwordText = TextEditingController();
    var sizeH = MediaQuery.of(context).size.height;
    var sizeW = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFF0C99FF),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Get.back();
            },
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: sizeW * 0.03),
              child: Center(
                child: InkWell(
                  child: Text(
                    "Language",
                    style: isMobile(context)
                        ? Constants.regularHeadingTextForTab
                        : isTab(context)
                            ? Constants.regularHeadingTextForTab
                            : Constants.regularHeadingTextForDesktop,
                  ),
                ),
              ),
            )
          ],
        ),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF0C99FF), Color(0xFF2236FF)])),
          child: Scaffold(
            // By defaut, Scaffold background is white
            // Set its value to transparent
            backgroundColor: Colors.transparent,
            body: Container(
              height: sizeH,
              width: sizeW,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Welcome to register",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              // style: isMobile(context)
                              //     ? Constants.regularHeadingTextForTab
                              //     : isTab(context)
                              //         ? Constants.regularHeadingTextForTab
                              //         : Constants.regularHeadingTextForDesktop,
                            )
                          ],
                        ),
                        SizedBox(
                          height: sizeH * 0.02,
                        ),
                        Row(
                          children: [
                            Text(
                              "Mobile phone number registration",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white.withOpacity(.7)),
                              // style: isMobile(context)
                              //     ? Constants.regularHeadingTextForTab
                              //     : isTab(context)
                              //         ? Constants.regularHeadingTextForTab
                              //         : Constants.regularHeadingTextForDesktop,
                            )
                          ],
                        ),
                        SizedBox(
                          height: sizeH * 0.05,
                        ),
                        Container(
                          height: 50,
                          width: 1000,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.person,
                                color: Color(0xFF0C99FF),
                              ),
                              border: InputBorder.none,
                              // border: OutlineInputBorder(),
                              // labelText: 'Enter your username',
                              hintText: 'Enter Your phone Number',
                              hintStyle: TextStyle(
                                color: Color(0xFF0C99FF),
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: sizeH * 0.02,
                        ),
                        Container(
                          height: 50,
                          width: 1000,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            onSaved: (value) {
                              passwordText.text = value!;
                            },
                            obscureText: _isObscure,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.https,
                                color: Color(0xFF0C99FF),
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _isObscure
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                },
                              ),
                              border: InputBorder.none,
                              hintText: 'Please Enter Your Password',
                              hintStyle: TextStyle(
                                  color: Color(0xFF0C99FF), fontSize: 14),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: sizeH * 0.02,
                        ),
                        Container(
                          height: 50,
                          width: 1000,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            onSaved: (value) {
                              passwordText.text = value!;
                            },
                            obscureText: _isObscure,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.https,
                                color: Color(0xFF0C99FF),
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _isObscure
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                },
                              ),
                              border: InputBorder.none,
                              hintText: 'Please Enter Your Password',
                              hintStyle: TextStyle(
                                  color: Color(0xFF0C99FF), fontSize: 14),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: sizeH * 0.02,
                        ),
                        Container(
                          height: 50,
                          width: 1000,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.person,
                                color: Color(0xFF0C99FF),
                              ),
                              border: InputBorder.none,
                              // border: OutlineInputBorder(),
                              // labelText: 'Enter your username',
                              hintText: 'Enter Your phone Number',
                              hintStyle: TextStyle(
                                color: Color(0xFF0C99FF),
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: [
                        SizedBox(
                          height: sizeH * 0.05,
                        ),
                        CustomBotton(
                          title: 'Register Now',
                          onPress: () {},
                          colorButton: Color(0xFF0C99FF).withOpacity(0.99),
                          colorButtonText: Colors.white,
                        ),
                        SizedBox(
                          height: sizeH * 0.02,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(LoginPage());
                          },
                          child: Container(
                              height: Get.height * 0.0600,
                              width: Get.width * 0.750,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(44),
                                  border: Border.all(color: Colors.white)),
                              child: Center(
                                child: Text(
                                  "Back to login",
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              )),
                        ),
                        SizedBox(
                          height: sizeH * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Have an account,download now",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
