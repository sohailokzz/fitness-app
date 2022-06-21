import 'package:flutter/material.dart';

import '../utilis/home_view_header.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: const [
          HomeViewHeader(),
        ],
      ),
    );
  }
}
