import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DividersWithText extends StatelessWidget {
  const DividersWithText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Expanded(
          child: Divider(
            thickness: 1.5,
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          "Or",
          style: GoogleFonts.inter(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        const Expanded(
          child: Divider(
            thickness: 1.5,
          ),
        ),
      ],
    );
  }
}
