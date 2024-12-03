import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';

import 'sighnup_viewmodel.dart';

class SighnupView extends StackedView<SighnupViewModel> {
  const SighnupView({Key? key}) : super(key: key);

  get check => false;

  @override
  Widget builder(
    BuildContext context,
    SighnupViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Stack(children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xff183D3D),
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/login_bg.png',
                    ),
                    fit: BoxFit.cover)),
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          ),
          SingleChildScrollView(
            child: Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5, right: 400),
                    child: CircleAvatar(
                      backgroundColor: Color(0xffD5E1DD),
                      child: IconButton(
                        onPressed: () {
                          viewModel.gotologin();
                        },
                        icon: Icon(Icons.arrow_back_ios),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text("Create Account",
                      style: TextStyle(
                          color: Color(0xffD5E1DD),
                          fontSize: 28,
                          fontWeight: FontWeight.w600)),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Username",
                        hintStyle: TextStyle(color: Color(0xffC7C7C7)),
                        fillColor: Color(0xff435D5C),
                        filled: true,
                        prefixIcon: Icon(Icons.person),
                        prefixIconColor: Color(0xffECECEC),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffD5E1DD)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Mobile Number",
                        hintStyle: TextStyle(color: Color(0xffC7C7C7)),
                        fillColor: Color(0xff435D5C),
                        filled: true,
                        prefixIcon: Icon(Icons.phone_android),
                        prefixIconColor: Color(0xffECECEC),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffD5E1DD)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "E-Mail",
                        hintStyle: TextStyle(color: Color(0xffC7C7C7)),
                        fillColor: Color(0xff435D5C),
                        filled: true,
                        prefixIcon: Icon(Icons.attachment),
                        prefixIconColor: Color(0xffECECEC),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffD5E1DD)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(color: Color(0xffC7C7C7)),
                        fillColor: Color(0xff435D5C),
                        filled: true,
                        prefixIcon: Icon(Icons.lock),
                        prefixIconColor: Color(0xffECECEC),
                        suffixIcon: Icon(Icons.visibility_off),
                        suffixIconColor: Color(0xffECECEC),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffD5E1DD)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Confirm Password",
                        hintStyle: TextStyle(color: Color(0xffC7C7C7)),
                        fillColor: Color(0xff435D5C),
                        filled: true,
                        prefixIcon: Icon(Icons.lock),
                        prefixIconColor: Color(0xffECECEC),
                        suffixIcon: Icon(Icons.visibility_off),
                        suffixIconColor: Color(0xffECECEC),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffD5E1DD)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Row(children: [
                    Checkbox(
                      value: check,
                      onChanged: (check) {},
                    ),
                    Expanded(
                      child: Text(
                        "By continuing you agree to Moonlit’s Privacy policy & Terms of service.",
                        style: TextStyle(color: Color(0xffD5E1DD)),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 45,
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        viewModel.gotobottom();
                      },
                      child: Center(
                        child: Text(
                          'SIGNUP',
                          style: TextStyle(
                              color: Color(0xff183D3D),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              letterSpacing: 1),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          elevation: 6,
                          backgroundColor: Color(0xffD5E1DD),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(top: 12, left: 200),
                          child: Container(
                            height: 38,
                            width: 96,
                            child: Image.asset(
                              "assets/images/OR_OPTION.png",
                              height: 32,
                              width: 156,
                            ),
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(top: 12, left: 200),
                          child: Container(
                            height: 38,
                            width: 96,
                            child: Image.asset(
                              "assets/images/Frame_166.png",
                              height: 42,
                              width: 200,
                            ),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 130),
                        child: Text(
                          "already have an account?",
                          style: TextStyle(color: Color(0xffD5E1DD)),
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            viewModel.gotologin();
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: Color(0xffD5E1DD),
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          )
        ]));
  }

  @override
  SighnupViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SighnupViewModel();
}
