import 'package:flutter/material.dart';

import '../utilis/bottom_nav_bar.dart';
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
        return Center(
          child: Container(
            child: const Text("Messages"),
          ),
        );
      case 2:
        return Center(
          child: Container(
            child: const Text("Photos"),
          ),
        );
      case 3:
        return Center(
          child: Container(
            child: const Text("Profile"),
          ),
        );
    }
  }
}
