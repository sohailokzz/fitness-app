import 'package:flutter/material.dart';

import '../utilis/widgets/reusable_header.dart';

class ActivityTracker extends StatelessWidget {
  const ActivityTracker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: const [
            ReusableHeader(
              title: 'Activity Tracker',
            ),
          ],
        ),
      ),
    );
  }
}
