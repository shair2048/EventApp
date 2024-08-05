import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommonNavigationBar extends StatefulWidget {
  CommonNavigationBar({super.key});

  @override
  State<CommonNavigationBar> createState() => _CommonNavigationBarState();
}

class _CommonNavigationBarState extends State<CommonNavigationBar> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      // backgroundColor: Colors.white,
      destinations: [
        NavigationDestination(
          icon: SvgPicture.asset(
            'assets/icons/Home_light.svg',
            height: 24,
            width: 24,
          ), 
          label: 'Home',
          
        ),
        NavigationDestination(
          icon: SvgPicture.asset(
            'assets/icons/Search_light.svg',
            height: 24,
            width: 24,
          ),
          label: 'Search'
        ),
        NavigationDestination(
          icon: SvgPicture.asset(
            'assets/icons/Ticket_use_light.svg',
            height: 24,
            width: 24,
          ), 
          label: 'Tickets'
        ),
        NavigationDestination(
          icon: SvgPicture.asset(
            'assets/icons/User_cicrle_light.svg',
            height: 24,
            width: 24,
          ),
          label: 'Profile'
        ),
      ],
      selectedIndex: currentPageIndex,
      onDestinationSelected: (int index) {
        setState(() {
          currentPageIndex = index;
        });
      },
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
    );
  }
}