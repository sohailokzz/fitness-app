import 'package:flutter/material.dart';

class GoogleFacebookButtons extends StatelessWidget {
  const GoogleFacebookButtons({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFFDDDADA),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image(
              image: AssetImage(
                imagePath,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
