import 'package:fitness_app/utilis/widgets/reusable_header.dart';
import 'package:flutter/material.dart';

class GalleryView extends StatelessWidget {
  const GalleryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          ReusableHeader(
            title: 'Progress Photo',
          ),
        ],
      ),
    );
  }
}
