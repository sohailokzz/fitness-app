import 'package:fitness_app/views/gallery_view.dart';
import 'package:fitness_app/views/profile_view.dart';
import 'package:flutter/material.dart';

import '../utilis/widgets/bottom_nav_bar.dart';
import 'activity_tracker_view.dart';
import 'home_view.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  int? _currentPage;

  @override
  void initState() {
    _currentPage = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getPage(_currentPage),
      bottomNavigationBar: AnimatedBottomNav(
          currentIndex: _currentPage,
          onChange: (index) {
            setState(() {
              _currentPage = index;
            });
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF92A3FD),
        elevation: 2,
        child: const Icon(
          Icons.youtube_searched_for_sharp,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  getPage(int? page) {
    switch (page) {
      case 0:
        return const HomeView();
      case 1:
        return const ActivityTracker();
      case 2:
        return const GalleryView();
      case 3:
        return const ProfileView();
    }
  }
}
