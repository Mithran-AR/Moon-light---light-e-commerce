import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:stacked/stacked.dart';

import 'login_viewmodel.dart';

class LoginView extends StackedView<LoginViewModel> {
  const LoginView({Key? key}) : super(key: key);

  get check => false;

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
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
        Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Welcome Back!",
                style: TextStyle(
                    color: Color(0xffD5E1DD),
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Username/E-mail",
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
              Padding(
                padding: const EdgeInsets.all(20.0),
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
              Row(
                children: [
                  Checkbox(
                    value: check,
                    onChanged: (check) {},
                  ),
                  Text(
                    "Remember me",
                    style: TextStyle(color: Color(0xffD5E1DD)),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(color: Color(0xffD5E1DD)),
                      ))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: 250,
                child: ElevatedButton(
                  onPressed: () {
                    viewModel.gotobottom();
                  },
                  child: Center(
                    child: Text(
                      'LOGIN',
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
                          "assets/images/Frame_166.png",
                          height: 42,
                          width: 200,
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 50),
                    child: Text(
                      "Didn't have an account?",
                      style: TextStyle(color: Color(0xffD5E1DD)),
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  TextButton(
                      onPressed: () {
                        viewModel.gotosignup();
                      },
                      child: Text(
                        "Sighnup",
                        style: TextStyle(
                            color: Color(0xffD5E1DD),
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}
