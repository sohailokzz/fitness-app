import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'vertical_steppers.dart';

class DailyRoutineDesign extends StatelessWidget {
  const DailyRoutineDesign({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 7.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Water Intake',
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              '4 Liters',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF92A3FD),
              ),
            ),
            Text(
              'Real time updates',
              style: GoogleFonts.poppins(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF7B6F72),
              ),
            ),
            const VerticalStepper(),
          ],
        ),
      ),
    );
  }
}
