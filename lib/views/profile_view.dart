import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utilis/widgets/reusable_header.dart';
import '../utilis/widgets/small_reusable_button.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const ReusableHeader(
              title: 'Profile',
            ),
            Row(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        Color(0XFFEAEEFF),
                        Color(0XFFEAEEFF),
                      ],
                    ),
                  ),
                  child: Image.asset(
                    'assets/images/profilepic.png',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Text(
                        'Stefani Wong',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Lose a Fat Program',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF7B6F72),
                        ),
                      ),
                    ],
                  ),
                ),
                SmallReusableButton(
                  title: 'Edit',
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
