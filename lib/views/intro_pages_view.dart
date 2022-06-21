import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import '../data/intro_pages_data.dart';
import '../utilis/custom_pagination.dart';
import '../utilis/intro_design.dart';
import '../utilis/intro_header.dart';
import '../utilis/reusable_button.dart';

class IntroPages extends StatefulWidget {
  const IntroPages({Key? key}) : super(key: key);

  @override
  IntroPagesState createState() => IntroPagesState();
}

class IntroPagesState extends State<IntroPages> {
  final SwiperController _swiperController = SwiperController();
  final int _pageCount = 3;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            const IntroHeader(),
            Padding(
              padding: const EdgeInsets.only(top: 38.0),
              child: Center(
                child: Container(
                  height: 300,
                  margin: const EdgeInsets.only(left: 8.0, right: 8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF9DCEFF),
                        Color(0xFF92A3FD),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 38.0),
              child: Column(
                children: <Widget>[
                  Expanded(
                      child: Swiper(
                    index: _currentIndex,
                    controller: _swiperController,
                    itemCount: _pageCount,
                    onIndexChanged: (index) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    loop: false,
                    itemBuilder: (context, index) {
                      return IntroDesign(
                        title: titles[index],
                        introImagePath: introImagePath[index],
                        subTitle: subtitles[index],
                      );
                    },
                    pagination: SwiperPagination(
                      builder: CustomPaginationBuilder(
                        activeSize: const Size(10.0, 20.0),
                        size: const Size(10.0, 15.0),
                        color: Colors.grey.shade600,
                      ),
                    ),
                  )),
                  const SizedBox(height: 10.0),
                  MyButton(
                    onTap: () {},
                    title: 'Confirm',
                    bgColor: const Color(0xFF92A3FD),
                    textColor: Colors.white,
                  ),
                  const SizedBox(height: 16.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
