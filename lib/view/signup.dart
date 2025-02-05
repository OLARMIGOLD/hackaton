import 'package:flutter/material.dart';
import 'package:hackaton/core/themes/custom_textfield.dart';
import 'package:hackaton/core/themes/custom_textstyle.dart';
import 'package:hackaton/view/home.dart';
import 'package:hackaton/view/widget/social.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
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
                    "New Account",
                    style: CustomTextstyle.bold
                        .copyWith(fontSize: 35, color: Colors.white),
                  ),
                  SizedBox(
                    width: 30,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              // height: 700,
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
                    "Full name",
                    style: CustomTextstyle.medium,
                  ),
                  TextInputField(
                    controller: TextEditingController(),
                    labelText: "Hunter Rebar",
                  ),
                  SizedBox(
                    height: 5,
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
                  Text(
                    "Email",
                    style: CustomTextstyle.medium,
                  ),
                  TextInputField(
                    controller: TextEditingController(),
                    labelText: "example@example.com",
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Mobile Number",
                    style: CustomTextstyle.medium,
                  ),
                  TextInputField(
                    controller: TextEditingController(),
                    labelText: "+123456789",
                    isObscure: false,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Date of birth",
                    style: CustomTextstyle.medium,
                  ),
                  TextInputField(
                    controller: TextEditingController(),
                    labelText: "DD / MM YYY",
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            "By continuing, you agree to",
                            style: CustomTextstyle.light
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text(
                                "Terms of Use ",
                                style: CustomTextstyle.light.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFFF642F)),
                              ),
                              Text(
                                "and ",
                                style: CustomTextstyle.light
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              Text("Privacy Policy ",
                                  style: CustomTextstyle.light.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFFF642F),
                                  )),
                            ],
                          ),
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
                              child: Text("Sign Up",
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
                            Text("Already have an account?",
                                style: CustomTextstyle.light
                                    .copyWith(fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Log in",
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
    );
  }
}
