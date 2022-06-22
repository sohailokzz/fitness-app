import 'package:flutter/material.dart';

import '../utilis/home_view_header.dart';
import '../utilis/show_bmi.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: const [
          HomeViewHeader(),
          ShowBMIData(),
        ],
      ),
    );
  }
}
