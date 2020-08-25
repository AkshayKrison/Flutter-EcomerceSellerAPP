import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:seller_panel/screens/login_signup/login_page.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => LoginPage(),
      ),
    );
  }

  Widget _buildImage(String assetName) {
    return Align(
      child: Image.asset('assets/gif/$assetName', width: 350.0),
      alignment: Alignment.bottomCenter,
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0, color: Colors.black);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28.0,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          title: "Fractional shares",
          body:
              "Instead of having to buy an entire share, invest any amount you want.",
          image: _buildImage('first.gif'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Learn as you go",
          body:
              "Download the Stockpile app and master the market with our mini-lesson.",
          image: _buildImage('second.gif'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Safe Delivery Management",
          body:
              "Download the Stockpile app and master the market with our mini-lesson.",
          image: _buildImage('third.jpg'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text(
        'Skip',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      next: const Icon(
        Icons.arrow_forward,
        color: Colors.black,
      ),
      done: const Text(
        'Done',
        style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
      ),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeColor: Color(0xFFEF3D3D),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
