import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding_animation/onboarding_animation.dart';

class OnBoardingAnimationExample extends StatefulWidget {
  const OnBoardingAnimationExample({Key? key}) : super(key: key);

  @override
  State<OnBoardingAnimationExample> createState() =>
      _OnBoardingAnimationExampleState();
}

class _OnBoardingAnimationExampleState
    extends State<OnBoardingAnimationExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.9),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: OnBoardingAnimation(
          controller: PageController(initialPage: 0),
          pages: const [
            _GetCardsContent(
              image: 'assets/images/pic1.png',
              cardContent: 'Lorem Ipsum is',
            ),
            _GetCardsContent(
              image: 'assets/images/pic2.png',
              cardContent: 'Lorem Ipsum',
            ),
            _GetCardsContent(
              image: 'assets/images/pic3.png',
              cardContent: 'Lorem Ipsum.',
            ),
          ],
          indicatorDotHeight: 7.0,
          indicatorDotWidth: 7.0,
          indicatorType: IndicatorType.expandingDots,
          indicatorPosition: IndicatorPosition.bottomCenter,
          indicatorSwapType: SwapType.normal,
        ),
      ),
    );
  }
}

class _GetCardsContent extends StatelessWidget {
  final String image, cardContent;

  const _GetCardsContent({
    Key? key,
    this.image = '',
    this.cardContent = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(20.0),
              ),
              child: Image.asset(
                image,
                height: 200,
              ),
            ),
            Text(
              cardContent,
              style: GoogleFonts.pacifico(fontSize: 30.0),
            ),
          ],
        ),
      ),
    );
  }
}
