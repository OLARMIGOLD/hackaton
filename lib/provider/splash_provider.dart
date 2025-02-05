import 'package:flutter/material.dart';
import 'package:hackaton/view/onboarding.dart';

class Splashprovider extends ChangeNotifier {
  nextPage(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Onboarding()));
    });
  }
}
