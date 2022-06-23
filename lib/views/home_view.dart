import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utilis/widgets/home_view_header.dart';
import '../utilis/widgets/show_bmi.dart';
import '../utilis/widgets/my_spark_line_chart.dart';
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
          const MyChartSparkLine(),
        ],
      ),
    );
  }
}
