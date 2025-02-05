import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hackaton/core/constants/images_const.dart';
import 'package:hackaton/core/themes/custom_textstyle.dart';

class FingerPrint extends StatefulWidget {
  const FingerPrint({super.key});

  @override
  State<FingerPrint> createState() => _FingerPrintState();
}

class _FingerPrintState extends State<FingerPrint> {
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
                    "Set Your Fingerprint",
                    style: CustomTextstyle.bold
                        .copyWith(fontSize: 30, color: Colors.white),
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
              // height: 650,
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
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.",
                      style: CustomTextstyle.light
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Center(
                        child: SvgPicture.asset(
                      ImagesConst.mark,
                      height: 400,
                      width: 150,
                      color: Color(0xffFFDECF),
                    )),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 150,
                          padding: EdgeInsets.symmetric(vertical: 1),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xffFFDECF),
                          ),
                          child: Text("Skip",
                              textAlign: TextAlign.center,
                              style: CustomTextstyle.medium.copyWith(
                                  fontSize: 20, color: Color(0xFFFF642F))),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 150,
                          padding: EdgeInsets.symmetric(vertical: 1),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xFFFF642F),
                          ),
                          child: Text("Continue",
                              textAlign: TextAlign.center,
                              style: CustomTextstyle.medium
                                  .copyWith(fontSize: 20, color: Colors.white)),
                        ),
                      ],
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
