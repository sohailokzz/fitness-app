import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/gestures.dart';

class MyRichText extends StatelessWidget {
  const MyRichText({
    Key? key,
    required this.text1,
    required this.text2,
    required this.onTap,
  }) : super(key: key);

  final String text1;
  final String text2;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: RichText(
        text: TextSpan(
          text: text1,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Colors.black,
          ),
          children: [
            TextSpan(
              text: ' $text2',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: const Color(0XFFC58BF2),
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  onTap();
                },
            )
          ],
        ),
      ),
    );
  }
}
