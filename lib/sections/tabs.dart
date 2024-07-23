import 'package:flutter/material.dart';
import 'package:first_app/sections/customtab.dart';

class MyTabs extends StatefulWidget {
  const MyTabs({super.key, required this.onTabHandler});
  final Function() onTabHandler;

  @override
  State<MyTabs> createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> {

 List<String> items = [
    "Home",
    "Explore",
    "Search",
    "Feed",
    "Posts",
    "Activity",
    "Setting",
    "Profile",
  ];
    
   
  int current = 0;
   void onTabHandler(index){
        setState(() {
      current = index;
    });
    }

  @override
  Widget build(BuildContext context) {
     return 
      SizedBox(
        height: 50,
        child: ListView.builder(
              physics:const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: items.length, // Number of boxes
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap:()=>onTabHandler(index),
                  child: Container(
                    width: 150, // Width of each box
                    margin: const EdgeInsets.all(8.0),
                    color: current == index ? Colors.black : Colors.white,
                    child: Center(
                      child: Text(
                        items[index],
                        style:  TextStyle(color: current == index ?  Colors.white : Colors.black,),
                      ),
                    ),
                  ),
                );
              },
            ),
      );
        
  }
}