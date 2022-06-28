import 'package:fitness_app/utilis/widgets/small_reusable_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TodayTargetWidget extends StatelessWidget {
  const TodayTargetWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      height: 57,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0XFFEAEEFF),
            Color(0XFFEAEEFF),
          ],
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Today Target',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            SmallReusableButton(
              title: 'Check',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
