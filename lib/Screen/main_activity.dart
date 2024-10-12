import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statussaver/Provider/bottom_nav_provider.dart';
import 'package:statussaver/Screen/BottomNavPages/Image/image.dart';
import 'package:statussaver/Screen/BottomNavPages/Video/video.dart';
class MainActivity extends StatefulWidget {
  const MainActivity({super.key});

  @override
  State<MainActivity> createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  List<Widget> pages=const [
    ImageHomePage(),
    VideoHomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavProvider>(

      builder: (context, nav,child) {
        return Scaffold(
          body: pages[nav.currentIndex],

          bottomNavigationBar: BottomNavigationBar(
            onTap: (value){
        nav.changeIndex(value);
            },
            currentIndex: nav.currentIndex,
            items: const [

            BottomNavigationBarItem(icon: Icon(Icons.image),label: "image"),
        BottomNavigationBarItem(icon: Icon(Icons.video_call),label: "video"),
          ],),
        );
      }
    );
  }
}
