import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../reusable_card.dart';

class TodayActivityTracker extends StatelessWidget {
  const TodayActivityTracker({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      height: 139,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Today Target',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 24,
                  width: 24,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shadowColor: const Color(0xFF92A3FD),
                      primary: const Color(0xFF92A3FD),
                      padding: const EdgeInsets.all(0.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Text(
                      '+',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: const [
                  ReusableCard(
                    imagePath: 'assets/images/h2o.png',
                    waterAmount: '8L',
                    cardTitle: 'Water Intake',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  ReusableCard(
                    imagePath: 'assets/images/boots.png',
                    waterAmount: '2400',
                    cardTitle: 'Foot Steps',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
