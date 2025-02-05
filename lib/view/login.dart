import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hackaton/core/constants/images_const.dart';
import 'package:hackaton/core/themes/custom_textfield.dart';
import 'package:hackaton/core/themes/custom_textstyle.dart';
import 'package:hackaton/view/home.dart';
import 'package:hackaton/view/widget/social.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_back_ios_rounded,
                    size: 15,
                    color: Color(0xffFF642F),
                  ),
                  Text(
                    "Log in",
                    style: CustomTextstyle.bold
                        .copyWith(fontSize: 35, color: Colors.white),
                  ),
                  SizedBox(
                    width: 50,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 650,
              width: double.infinity,
              padding: EdgeInsets.all(
                35,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome",
                    style: CustomTextstyle.semibold.copyWith(fontSize: 24),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                    style: CustomTextstyle.light
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Email or Mobile Number",
                    style: CustomTextstyle.medium,
                  ),
                  TextInputField(
                    controller: TextEditingController(),
                    labelText: "example@example.com",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Password",
                    style: CustomTextstyle.medium,
                  ),
                  TextInputField(
                    controller: TextEditingController(),
                    labelText: "**********",
                    isObscure: false,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Text("Forget Password?",
                            textAlign: TextAlign.right,
                            style: CustomTextstyle.medium.copyWith(
                                fontSize: 20, color: Color(0xFFFF642F))),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()));
                            },
                            child: Container(
                              width: 207,
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xFFFF642F),
                              ),
                              child: Text("Log In",
                                  textAlign: TextAlign.center,
                                  style: CustomTextstyle.medium.copyWith(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text("or sign up with",
                              style: CustomTextstyle.light
                                  .copyWith(fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10,
                          ),
                          Social(),
                          SizedBox(
                            height: 20,
                          ),
                          Row(children: [
                            Text("Don't have an account?",
                                style: CustomTextstyle.light
                                    .copyWith(fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Sign Up",
                                style: CustomTextstyle.light.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFFF642F))),
                          ])
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar:
          BottomNavigationBar(backgroundColor: Color(0xFFFF642F), items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home_rounded,
              color: Colors.white,
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.dining_sharp,
              color: Color(0xFFFF642F),
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline,
              color: Color(0xFFFF642F),
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.assignment,
              color: Color(0xFFFF642F),
            ),
            label: ""),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.support_agent_sharp,
              color: Color(0xFFFF642F),
            ),
            label: "")
      ]),
    );
  }
}
