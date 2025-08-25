import 'package:flutter/material.dart';
import '../utilis/widgets/notification_design.dart';
import '../utilis/widgets/reusable_header.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ReusableHeader(
              title: 'Notifications',
            ),
            Expanded(
              child: Notifications(),
            )
          ],
        ),
      ),
    );
  }
}
