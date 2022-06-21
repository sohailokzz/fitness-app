import 'package:flutter/material.dart';

class AnimatedBottomNav extends StatelessWidget {
  final int? currentIndex;
  final Function(int)? onChange;
  const AnimatedBottomNav({Key? key, this.currentIndex, this.onChange})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 30,
      child: Container(
        height: kToolbarHeight,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: InkWell(
                onTap: () => onChange!(0),
                child: BottomNavItem(
                  icon: Icons.home_outlined,
                  activeIcon: Icons.home,
                  isActive: currentIndex == 0,
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () => onChange!(1),
                child: BottomNavItem(
                  icon: Icons.mark_email_unread_outlined,
                  activeIcon: Icons.mark_email_unread,
                  isActive: currentIndex == 1,
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () => onChange!(2),
                child: BottomNavItem(
                  icon: Icons.camera_alt_outlined,
                  activeIcon: Icons.camera_alt,
                  isActive: currentIndex == 2,
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () => onChange!(3),
                child: BottomNavItem(
                  icon: Icons.person_outline,
                  activeIcon: Icons.person,
                  isActive: currentIndex == 3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final bool isActive;
  final IconData? icon;
  final Color? activeColor;
  final Color? inactiveColor;

  final IconData? activeIcon;
  const BottomNavItem({
    Key? key,
    this.isActive = false,
    this.icon,
    this.activeColor,
    this.inactiveColor,
    this.activeIcon,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      transitionBuilder: (child, animation) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0.0, 1.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
      duration: const Duration(milliseconds: 500),
      reverseDuration: const Duration(milliseconds: 200),
      child: isActive
          ? Container(
              color: Colors.white,
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    activeIcon,
                    color: activeColor ?? const Color(0xFFC58BF2),
                  ),
                  const SizedBox(height: 5.0),
                  Container(
                    width: 5.0,
                    height: 5.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: activeColor ?? const Color(0xFFC58BF2),
                    ),
                  ),
                ],
              ),
            )
          : Icon(
              icon,
              color: inactiveColor ?? Colors.grey,
            ),
    );
  }
}
