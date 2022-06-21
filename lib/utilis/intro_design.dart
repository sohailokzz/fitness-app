import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroDesign extends StatelessWidget {
  const IntroDesign({
    Key? key,
    required this.title,
    required this.introImagePath,
    required this.subTitle,
  }) : super(key: key);

  final String title;
  final String introImagePath;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 300,
      margin: const EdgeInsets.fromLTRB(32.0, 70.0, 32.0, 60.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF9DCEFF),
            Color(0xFF92A3FD),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(introImagePath),
            const SizedBox(height: 30.0),
            Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Colors.white,
              ),
            ),
            Text(
              subTitle,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
