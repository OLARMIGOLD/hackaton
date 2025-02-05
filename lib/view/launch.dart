import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hackaton/core/constants/images_const.dart';
import 'package:hackaton/core/themes/custom_textstyle.dart';
import 'package:hackaton/view/login.dart';
import 'package:hackaton/view/signup.dart';

class Launch extends StatefulWidget {
  const Launch({super.key});

  @override
  State<Launch> createState() => _LaunchState();
}

class _LaunchState extends State<Launch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffFF642F),
              ),
            ),
            Positioned(
                top: 250,
                child: Container(
                  width: 410,
                  padding: EdgeInsets.symmetric(horizontal: 70),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(ImagesConst.logo,
                          width: 250, color: Color(0xffF5CB58)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "YUM",
                            style: CustomTextstyle.title.copyWith(
                                fontSize: 40, color: Color(0xffF5CB58)),
                          ),
                          Text(
                            "QUICK",
                            style: CustomTextstyle.title
                                .copyWith(fontSize: 40, color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.",
                        textAlign: TextAlign.center,
                        style: CustomTextstyle.medium
                            .copyWith(fontSize: 14, color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Container(
                          width: 207,
                          padding: EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xffF5CB58),
                          ),
                          child: Text("Log In",
                              textAlign: TextAlign.center,
                              style: CustomTextstyle.medium.copyWith(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFF642F),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Signup()));
                        },
                        child: Container(
                          width: 207,
                          padding: EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xffF3E9B5),
                          ),
                          child: Text("Sign Up",
                              textAlign: TextAlign.center,
                              style: CustomTextstyle.medium.copyWith(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFF642F),
                              )),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    ));
  }
}
