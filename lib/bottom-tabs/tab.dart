import 'package:first_app/shaps/rectangular.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar_item.dart';
import 'package:first_app/pages/camerapage.dart';
import 'package:first_app/pages/homepage.dart';
import 'package:first_app/pages/profilepage.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';

class BottomTab extends ConsumerStatefulWidget {
  const BottomTab({super.key});

  @override
  ConsumerState<BottomTab> createState() => _BottomTabState();
}

class _BottomTabState extends ConsumerState<BottomTab> {
  final List<Widget> pages = const [HomePage(), CameraPage(), ProfilePage()];
  final PageController _pageController = PageController();
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) => {
          setState(() {
            _selectedIndex = index;
          })
        },
        children: pages,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(left: 15),
        child: FloatingActionButton(
          shape: CircleBorder(),
          backgroundColor: Colors.black,
          onPressed: () {},
          child: const Text(
            'd',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      bottomNavigationBar:  Padding(
        padding: EdgeInsets.only(bottom: 10,left: 10,right: 10),
        child: ClipRRect(
           borderRadius: BorderRadius.circular(10),
          child: BottomAppBar(
            notchMargin: 5.0,
            shape: CircularNotchedRectangle(),
            color: Colors.black,
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: _selectedIndex == 0 ? Icon(Icons.home, color: Colors.red) : Icon(Icons.home_filled,color: Colors.white,),
                  onPressed: () => _onItemTapped(0),
                ),
                IconButton(
                  icon: const Icon(Icons.camera, color: Colors.white),
                  onPressed: () => _onItemTapped(1),
                ),
              // const  Padding(
              //    padding: const EdgeInsets.only(bottom: 30),
              //    child: const MyShap(),
              //  ),
                const SizedBox(width: 40), // Space for the FAB
                IconButton(
                  icon: const Icon(Icons.person, color: Colors.white),
                  onPressed: () => _onItemTapped(2),
                ),
                IconButton(
                  icon: const Icon(Icons.settings, color: Colors.white),
                  onPressed: () => _onItemTapped(0),
                ),
              ],
            ),
          
          ),
        ),
      ),
    );
  }
}
