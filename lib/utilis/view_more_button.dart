import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewMoreButton extends StatelessWidget {
  const ViewMoreButton({
    Key? key,
    required this.onTap,
    required this.title,
    required this.bgColor,
    required this.textColor,
  }) : super(key: key);

  final Function onTap;
  final Color bgColor;
  final String title;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      width: 95,
      child: ElevatedButton(
        onPressed: () {
          onTap();
        },
        style: ElevatedButton.styleFrom(
          shadowColor: const Color(0xFF92A3FD),
          backgroundColor: bgColor,
          padding: const EdgeInsets.all(0.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
        ),
        child: Text(
          title,
          style: GoogleFonts.poppins(
            color: textColor,
            fontSize: 10,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
