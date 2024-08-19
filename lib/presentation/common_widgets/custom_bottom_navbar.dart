import 'package:codesbreak_task/presentation/activity_screen/activity_screen.dart';
import 'package:codesbreak_task/presentation/dashboard_screen/dashboard.dart';
import 'package:codesbreak_task/presentation/goal_screen/goal_screen.dart';
import 'package:codesbreak_task/presentation/profile_screen/profile_screen.dart';
import 'package:codesbreak_task/utils/color_constants.dart';
import 'package:codesbreak_task/utils/image_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavbar extends StatefulWidget {
  const CustomBottomNavbar({super.key});

  @override
  State<CustomBottomNavbar> createState() => _CustomBottomNavbarState();
}

class _CustomBottomNavbarState extends State<CustomBottomNavbar> {
  final screens = [const Dashboard(), const ActivityScreen(), const GoalScreen(), const ProfileScreen()];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screens[_selectedIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
        child: BottomAppBar(
          height: 72,
          color: Colors.white,
          elevation: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () => _onItemTapped(0),
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    child: SvgPicture.asset(
                      ImageConstant.homeImg,
                      width: 27,
                      height: 25,
                      alignment: Alignment.center,
                      color: _selectedIndex == 0 ? AppColors.primaryColor : AppColors.bottomBarIconColor,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'Home',
                    style: TextStyle(color: _selectedIndex == 0 ? AppColors.primaryColor : AppColors.bottomBarIconColor, fontWeight: FontWeight.w700),
                  )
                ],
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () => _onItemTapped(1),
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    child: SvgPicture.asset(
                      ImageConstant.activityImg,
                      width: 27,
                      height: 25,
                      alignment: Alignment.center,
                      color: _selectedIndex == 1 ? AppColors.primaryColor : AppColors.bottomBarIconColor,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'Activity',
                    style: TextStyle(color: _selectedIndex == 1 ? AppColors.primaryColor : AppColors.bottomBarIconColor, fontWeight: FontWeight.w700),
                  )
                ],
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () => _onItemTapped(2),
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    child: SvgPicture.asset(
                      ImageConstant.statisticsImg,
                      width: 27,
                      height: 25,
                      alignment: Alignment.center,
                      color: _selectedIndex == 2 ? AppColors.primaryColor : AppColors.bottomBarIconColor,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'Statistics',
                    style: TextStyle(color: _selectedIndex == 2 ? AppColors.primaryColor : AppColors.bottomBarIconColor, fontWeight: FontWeight.w700),
                  )
                ],
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () => _onItemTapped(3),
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    child: SvgPicture.asset(
                      ImageConstant.profileImg,
                      width: 27,
                      height: 25,
                      alignment: Alignment.center,
                      color: _selectedIndex == 3 ? AppColors.primaryColor : AppColors.bottomBarIconColor,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'Profile',
                    style: TextStyle(color: _selectedIndex == 3 ? AppColors.primaryColor : AppColors.bottomBarIconColor, fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
