import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

import '../data/image_list.dart';
import '../data/subtitle_list.dart';
import '../data/title_list.dart';
import '../transition_routing/slide_rigt_routing.dart';
import '../utilis/widgets/intro_item.dart';
import 'create_account_view.dart';

class OnboardingPages extends StatefulWidget {
  const OnboardingPages({Key? key}) : super(key: key);

  @override
  State<OnboardingPages> createState() => _OnboardingPagesState();
}

class _OnboardingPagesState extends State<OnboardingPages> {
  final SwiperController _controller = SwiperController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Swiper(
            loop: false,
            index: _currentIndex,
            onIndexChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            controller: _controller,
            pagination: SwiperPagination(
              builder: DotSwiperPaginationBuilder(
                activeColor: const Color(0xFF92A3FD),
                activeSize: 20.0,
                color: Colors.grey.shade300,
              ),
            ),
            itemCount: 4,
            itemBuilder: (context, index) {
              return IntroItem(
                title: titles[index],
                subtitle: subtitles[index],
                imageUrl: imageUrl[index],
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
              bottom: 20,
            ),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF9DCEFF),
                      Color(0xFF92A3FD),
                    ],
                  ),
                ),
                child: IconButton(
                  icon: Icon(
                    _currentIndex == 3 ? Icons.check : Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 18,
                  ),
                  onPressed: () {
                    if (_currentIndex != 3) {
                      _controller.next();
                    } else {
                      Navigator.push(
                        context,
                        SlideRightRoute(
                          page: const CreateAccountView(),
                        ),
                      );
                    }
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
