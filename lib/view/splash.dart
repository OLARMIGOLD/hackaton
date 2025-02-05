import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hackaton/core/constants/images_const.dart';
import 'package:hackaton/core/themes/custom_textstyle.dart';
import 'package:hackaton/provider/splash_provider.dart';
import 'package:provider/provider.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<Splashprovider>().nextPage(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(ImagesConst.logo,
                width: 250, color: Color(0xffFF642F)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "YUM",
                  style: CustomTextstyle.title
                      .copyWith(fontSize: 40, color: Color(0xFFFF642F)),
                ),
                Text(
                  "QUICK",
                  style: CustomTextstyle.title
                      .copyWith(fontSize: 40, color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
