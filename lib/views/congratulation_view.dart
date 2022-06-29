import 'package:fitness_app/utilis/reusable_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CongratulationView extends StatelessWidget {
  const CongratulationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/womenfootball.png'),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Congratulations, You Have Finished Your Workout',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            'Exercises is king and nutrition is queen.'
            ' Combine the two and you will have a kingdom',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF7B6F72),
            ),
          ),
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: MyButton(
              onTap: () {},
              title: 'Back To Home',
              bgColor: const Color(0xFF92A3FD),
              textColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
