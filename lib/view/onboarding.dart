import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hackaton/core/constants/images_const.dart';
import 'package:hackaton/core/themes/custom_textstyle.dart';
import 'package:hackaton/view/launch.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Center(
            child: SizedBox(
              width: double.infinity,
              child: Stack(
                children: [
                  Image.asset(
                    ImagesConst.pic1,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  Positioned(
                      bottom: 0,
                      child: Container(
                        width: 410,
                        padding: EdgeInsets.fromLTRB(70, 30, 50, 70),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(ImagesConst.doc,
                                width: 35, color: Color(0xffFF642F)),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Order For Food",
                              style: CustomTextstyle.inter.copyWith(
                                  fontSize: 24, color: Color(0xFFFF642F)),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet, conse ctetur  adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.",
                              style:
                                  CustomTextstyle.medium.copyWith(fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: 150,
                              padding: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xFFFF642F),
                              ),
                              child: Text("Next",
                                  textAlign: TextAlign.center,
                                  style: CustomTextstyle.medium.copyWith(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  )),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ),

          // Second Slide
          Center(
            child: SizedBox(
              width: double.infinity,
              child: Stack(
                children: [
                  Image.asset(
                    ImagesConst.pic2,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  Positioned(
                      bottom: 0,
                      child: Container(
                        width: 410,
                        padding: EdgeInsets.fromLTRB(70, 30, 50, 70),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(ImagesConst.card,
                                width: 50, color: Color(0xffFF642F)),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Easy Payment",
                              style: CustomTextstyle.inter.copyWith(
                                  fontSize: 24, color: Color(0xFFFF642F)),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet, conse ctetur  adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.",
                              style:
                                  CustomTextstyle.medium.copyWith(fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: 150,
                              padding: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xFFFF642F),
                              ),
                              child: Text("Next",
                                  textAlign: TextAlign.center,
                                  style: CustomTextstyle.medium.copyWith(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  )),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ),
          //Third Slide
          Center(
            child: SizedBox(
              width: double.infinity,
              child: Stack(
                children: [
                  Image.asset(
                    ImagesConst.pic1,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  Positioned(
                      bottom: 0,
                      child: Container(
                        width: 410,
                        padding: EdgeInsets.fromLTRB(70, 30, 50, 70),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(ImagesConst.deli,
                                width: 50, color: Color(0xffFF642F)),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Fast Delivery",
                              style: CustomTextstyle.inter.copyWith(
                                  fontSize: 24, color: Color(0xFFFF642F)),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet, conse ctetur  adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.",
                              style:
                                  CustomTextstyle.medium.copyWith(fontSize: 14),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Launch()));
                              },
                              child: Container(
                                width: 150,
                                padding: EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xFFFF642F),
                                ),
                                child: Text("Get Started",
                                    textAlign: TextAlign.center,
                                    style: CustomTextstyle.medium.copyWith(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    )),
                              ),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
