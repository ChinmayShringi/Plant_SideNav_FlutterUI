import 'package:flutter/material.dart';
import 'package:plant2/widgets/tab.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> widgets = [
    GreenPlant(),
    GreenPlant(),
    GreenPlant(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 90,
            padding: EdgeInsets.symmetric(vertical: 35),
            color: Theme.of(context).primaryColor,
            child: RotatedBox(
              quarterTurns: 3,
              child: Row(
                children: [
                  RotatedBox(
                    quarterTurns: 1,
                    child: IconButton(
                      icon: Icon(
                        Icons.home_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Spacer(),
                  _buildNavItem("Shape Close", 2),
                  _buildNavItem("Indoor Plant", 1),
                  _buildNavItem("Green Plant", 0),
                  Spacer(),
                  IconButton(
                    icon: Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: PageView(
                children: [
                  widgets[currentIndex],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  // CircularNotchedRectangle(),

  TextButton _buildNavItem(String title, int index) {
    bool isSelected = currentIndex == index;
    return TextButton(
      onPressed: () => setState(() => currentIndex = index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white.withOpacity(0.8),
              fontSize: 17,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(height: 10),
          isSelected
              ? Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                )
              : Container(height: 30),
        ],
      ),
    );
  }
}
