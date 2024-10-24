import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skl_pertama/screens/home/home_screen.dart';
import 'package:skl_pertama/screens/profile/profile_screen.dart';

import '../constants.dart';
import '../enums.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = const Color(0xFFB6B6B6);
    final Color activeIconColor = kPrimaryColor;

    return Container(
      margin: const EdgeInsets.only(bottom: 20), // Create gap at the bottom
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20), // Add horizontal padding for floating look
      decoration: BoxDecoration(
        color: Colors.white,  // Background color of the bottom nav bar
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 15), // Make shadow appear below the nav bar
            blurRadius: 30, // Larger blur for more dramatic floating effect
            color: Colors.black.withOpacity(0.25), // Shadow color with transparency
          ),
        ],
        borderRadius: const BorderRadius.all(
          Radius.circular(40), // Full circular borders to match the design
        ),
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/Shop Icon.svg",
                color: MenuState.home == selectedMenu
                    ? activeIconColor
                    : inActiveIconColor,
              ),
              onPressed: () => Navigator.pushNamed(context, HomeScreen.routeName),
            ),
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/Heart Icon.svg",
                color: MenuState.wishlist == selectedMenu
                    ? activeIconColor
                    : inActiveIconColor,
              ),
              onPressed: () {},
            ),
            IconButton(
                icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg"),
                onPressed: () {},
              ),
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/User Icon.svg",
                color: MenuState.profile == selectedMenu
                    ? activeIconColor
                    : inActiveIconColor,
              ),
              onPressed: () => Navigator.pushNamed(context, ProfileScreen.routeName),
            ),
          ],
        ),
      ),
    );
  }
}
