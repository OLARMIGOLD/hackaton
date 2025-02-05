import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hackaton/core/constants/images_const.dart';

class Social extends StatelessWidget {
  const Social({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffFFDECF),
          ),
          child: Image.asset(ImagesConst.gmail),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffFFDECF),
          ),
          child: Image.asset(ImagesConst.fb),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffFFDECF),
          ),
          child: SvgPicture.asset(ImagesConst.mark),
        )
      ],
    );
  }
}
