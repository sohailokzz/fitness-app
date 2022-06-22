import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:fitness_app/data/spark_line_chart_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utilis/home_view_header.dart';
import '../utilis/show_bmi.dart';
import '../utilis/widgets/today_target_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const HomeViewHeader(),
          const ShowBMIData(),
          const SizedBox(
            height: 20,
          ),
          const TodayTargetWidget(),
          Align(
            alignment: FractionalOffset.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 24,
              ),
              child: Text(
                'Activity Status',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Container(
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
          ),
        ],
      ),
    );
  }
}
