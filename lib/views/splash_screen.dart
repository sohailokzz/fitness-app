import 'package:flutter/material.dart';

import '../transition_routing/slide_rigt_routing.dart';
import '../utilis/reusable_button.dart';
import 'on_boarding_pages.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/welcomscreen.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: MyButton(
                textColor: const Color(0xFF92A3FD),
                bgColor: const Color(0xFFFFFFFF),
                onTap: () {
                  Navigator.push(
                    context,
                    SlideRightRoute(
                      page: const OnboardingPages(),
                    ),
                  );
                },
                title: 'Get Started',
              ),
            ),
          )
        ],
      ),
    );
  }
}
