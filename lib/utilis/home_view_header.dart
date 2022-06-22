import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../transition_routing/slide_rigt_routing.dart';
import '../views/notification_view.dart';

class HomeViewHeader extends StatelessWidget {
  const HomeViewHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back',
                style: GoogleFonts.poppins(
                  color: const Color(0xFFADA4A5),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                'Stefani Wong',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                SlideRightRoute(
                  page: const NotificationView(),
                ),
              );
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                color: Colors.grey.shade200,
              ),
              child: const Center(
                child: Icon(
                  Icons.notifications_active_outlined,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
