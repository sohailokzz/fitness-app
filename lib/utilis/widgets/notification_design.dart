import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../data/notifications_data.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  NotificationsData notifications = NotificationsData();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10.0,
      ),
      child: ListView.separated(
        separatorBuilder: (context, index) => const Divider(
          color: Color(0xFFDDDADA),
          thickness: 1.5,
        ),
        itemCount: notifications.notificationList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              width: 40.0,
              height: 40.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF9DCEFF),
                    Color(0xFF92A3FD),
                  ],
                ),
              ),
              child: Center(
                child: Image.asset(
                  notifications.notificationList[index]['image'],
                ),
              ),
            ),
            title: Text(
              notifications.notificationList[index]['title'],
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text(
              notifications.notificationList[index]['time'],
              style: GoogleFonts.poppins(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF7B6F72),
              ),
            ),
            horizontalTitleGap: 5.0,
            trailing: const Icon(
              Icons.more_vert,
            ),
          );
        },
      ),
    );
  }
}
