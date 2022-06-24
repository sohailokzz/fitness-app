import 'package:flutter/material.dart';
import '../utilis/widgets/reusable_header.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: const [
            ReusableHeader(
              title: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
