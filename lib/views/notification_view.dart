import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utilis/widgets/notification_design.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        color: Colors.grey.shade200,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Notifications',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        color: Colors.grey.shade200,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.more_horiz,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: Notifications(),
            )
          ],
        ),
      ),
    );
  }
}
