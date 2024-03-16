import 'package:flutter/material.dart';
import 'package:state_management_provider/screens/stopwatch_screen.dart';
import 'package:state_management_provider/screens/us_cities_screen.dart';

import 'counter_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final pages = [
  const CounterScreen(),
  const StopWatchScreen(),
  const UsCities(),
];

final title = ["Counter", "US Cities", "StopWatch"];

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title[_currentIndex]),
      ),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: "Count",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_city),
            label: "Cities",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.watch),
            label: "Stop Watch",
          ),
        ],
      ),
    );
  }
}
