import 'package:flutter/material.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar_item.dart';
import 'package:first_app/pages/camerapage.dart';
import 'package:first_app/pages/homepage.dart';
import 'package:first_app/pages/profilepage.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:first_app/screens/mainScreen.dart';




class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  /// Controller to handle PageView and also handles initial page
  final _pageController = PageController(initialPage: 0);

  /// Controller to handle bottom nav bar and also handles initial page
  final NotchBottomBarController _controller =
      NotchBottomBarController(index: 0);

  int maxCount = 5;

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  final List<Widget> pages = const [Mainscreen(), ProfilePage(), CameraPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: List.generate(pages.length, (index) => pages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: AnimatedNotchBottomBar(
        kBottomRadius: 10.0,
        color: Colors.black,
        // bottomBarWidth: 400.0,
        notchBottomBarController: _controller,
        bottomBarItems: const [
          BottomBarItem(
            inActiveItem:  Icon(
                Icons.home_filled,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            
            activeItem: Icon(
              Icons.home_filled,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            itemLabel: 'Page 1',
          ),
          BottomBarItem(
            inActiveItem: Icon(Icons.star, color: Color.fromARGB(255, 255, 255, 255),size: 20,),
            activeItem: Icon(
              Icons.star,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            itemLabel: 'Page 2',
          ),
          BottomBarItem(
            inActiveItem: Icon(
              Icons.settings,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            activeItem: Icon(
              Icons.settings,
              color: Color.fromARGB(255, 250, 250, 250),
            ),
            itemLabel: 'Page 3',
          ),
        ],
        onTap: (index) {
          _pageController.jumpToPage(index);
        },
        kIconSize: 10.0,
        notchColor: const Color.fromARGB(255, 0, 0, 0),
        showLabel: false,
      ),
    );
  }
}
