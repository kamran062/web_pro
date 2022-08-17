import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:web_proj_mohsina/screens/registrationScreen.dart';

import '../constant/button.dart';
import '../constant/text_style.dart';
import '../plat_form_details.dart';
import 'BottomNavigation.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              // Get.back();
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/logoSample.png",
                              height: sizeH * 0.15,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              "hello!",
                              style: TextStyle(
                                  fontSize: 20,
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
                              "Welcome to GH",
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
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.02,
                            ),
                            Checkbox(value: isChecked, onChanged: _onChanged),
                            Text(
                              "Remember me",
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: sizeH * 0.005,
                        ),
                        CustomBotton(
                          title: 'Log in Now',
                          onPress: () {
                            Get.to(BottomNav());
                          },
                          colorButton: Colors.white,
                          colorButtonText: Color(0xFF0C99FF),
                        ),
                        SizedBox(
                          height: sizeH * 0.005,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "No GH account",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                            TextButton(
                              onPressed: () {
                                Get.to(RegistrationPage());
                              },
                              child: Text(
                                "Register",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
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

  _onChanged(bool? value) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    setState(() {
      isChecked = value!;
      _prefs.setBool("check", isChecked);
      _prefs.setString("name", emailText.text);
      _prefs.setString("pas", passwordText.text);
      _prefs.commit();
      // getCredential();
    });
  }
}
