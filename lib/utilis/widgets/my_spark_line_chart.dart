import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../data/spark_line_chart_data.dart';

class MyChartSparkLine extends StatelessWidget {
  const MyChartSparkLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      height: 150,
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
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Heart Rate',
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '78 BPM',
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF92A3FD)),
            ),
            const SizedBox(
              height: 12,
            ),
            Expanded(
              child: Sparkline(
                data: sparkLineChartData,
                lineWidth: 2.3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
