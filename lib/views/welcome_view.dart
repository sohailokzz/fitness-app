import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utilis/reusable_button.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Image.asset('assets/images/manwoman.png'),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Welcome, Stefan',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
            Text(
              'You are all set now, let’s reach your goals together with us',
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 160,
            ),
            MyButton(
              onTap: () {},
              title: 'Go To Home',
              bgColor: const Color(0xFF92A3FD),
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
