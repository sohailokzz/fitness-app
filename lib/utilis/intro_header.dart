import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroHeader extends StatelessWidget {
  const IntroHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Align(
        alignment: FractionalOffset.topCenter,
        child: Column(
          children: [
            Text(
              'What is your goal?',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'It will help us to choose a best program for you',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
