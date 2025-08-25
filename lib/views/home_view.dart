import 'package:fitness_app/utilis/widgets/verticel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utilis/widgets/daily_routine_design.dart';
import '../utilis/widgets/home_view_header.dart';
import '../utilis/widgets/show_bmi.dart';
import '../utilis/widgets/my_spark_line_chart.dart';
import '../utilis/widgets/today_target_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView(
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
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Container(
                  width: 150,
                  height: 315,
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
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 14,
                    ),
                    child: Row(
                      children: [
                        VerticelSlider(),
                        DailyRoutineDesign(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
