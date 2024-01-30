import 'package:flutter/material.dart';
import 'package:flutter_cubit/core/constant/color_palatte.dart';
import 'package:flutter_cubit/pages/profile_page.dart';
import 'package:flutter_cubit/pages/search_page.dart';
import 'package:flutter_cubit/pages/search_result_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import '../core/constant/dimension_constant.dart';
import 'home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(

      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: IndexedStack(
          index: _currentIndex,
          children: const [
            HomePage(),
            SearchPage(),
            SearchResultPage(destination: "MY BOOKING TRIPS", isLeading: false,),
            ProfilePage()
          ],
        ),
          bottomNavigationBar: SalomonBottomBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            selectedItemColor: ColorPalette.primaryColor,
            unselectedItemColor: ColorPalette.primaryColor.withOpacity(0.2),
            margin: const EdgeInsets.symmetric(vertical: kDefaultPadding, horizontal: kMinPadding),
            items: [
              SalomonBottomBarItem(
                  icon: const Icon(
                    FontAwesomeIcons.house,
                    size: kDefaultIconSize,
                  ),
                  title: const Text("HOME")
              ),
              SalomonBottomBarItem(
                  icon: const Icon(
                    FontAwesomeIcons.search,
                    size: kDefaultIconSize,
                  ),
                  title: const Text("LIKES")
              ),
              SalomonBottomBarItem(
                  icon: const Icon(
                    FontAwesomeIcons.briefcase,
                    size: kDefaultIconSize,
                  ),
                  title: const Text("BOOKING")
              ),
              SalomonBottomBarItem(
                  icon: const Icon(
                    FontAwesomeIcons.solidUser,
                    size: kDefaultIconSize,
                  ),
                  title: const Text("PROFILE")
              ),
            ],
          ),
        ),
      ),
    );
  }
}
