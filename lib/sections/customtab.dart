import 'package:flutter/material.dart';
import 'package:first_app/sections/tabs.dart';
import 'package:first_app/tab-content/home.dart';
import 'package:first_app/sections/test.dart';
import 'package:flutter/widgets.dart';

class Customtab extends StatefulWidget {
  const Customtab({super.key});

  @override
  State<Customtab> createState() => _CustomtabState();
}

class _CustomtabState extends State<Customtab> {
  // var contentTabs =const Test();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3, // Number of tabs
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Expanded(
                child: TabBar(
                  isScrollable: true,
                  physics: const ClampingScrollPhysics(),
                  padding: const EdgeInsets.only(
                      top: 10, left: 10, right: 10, bottom: 10),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  tabs: [
                    Tab(
                      child: Container(
                          alignment: Alignment.center,
                          width: 120,
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(color: Colors.black, width: 1)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.access_alarm),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Home'),
                            ],
                          )),
                    ),
                    Tab(
                      child: Container(
                          alignment: Alignment.center,
                          width: 120,
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(color: Colors.black, width: 1)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.access_alarm),
                              SizedBox(
                                width: 10,
                              ),
                              Text('about'),
                            ],
                          )),
                    ),
                    Tab(
                      child: Container(
                          alignment: Alignment.center,
                          width: 120,
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(color: Colors.black, width: 1)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.access_alarm),
                              SizedBox(
                                width: 10,
                              ),
                              Text('bike'),
                            ],
                          )),
                    ),
                  ],
                  tabAlignment: TabAlignment.start,
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.white,
                  dividerColor: Colors.white,
                ),
              ),
              const Expanded(
                flex: 6,
                child: TabBarView(
                  children: [
                     Home(),
                    Center(child: Text("Transit Tab Content")),
                    Center(child: Text("Bike Tab Content")),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
