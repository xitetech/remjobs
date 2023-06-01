import 'package:flutter/material.dart';
import 'package:restapi/HomePage.dart';
import 'package:restapi/main.dart';
import 'package:restapi/views/categories/all.dart';
import 'package:restapi/views/categories/catmain.dart';
import 'package:animations/animations.dart';
import 'package:restapi/views/recommended.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Btf extends StatefulWidget {
  @override
  _BtfState createState() => _BtfState();
}

class _BtfState extends State<Btf> {
  int pageIndex = 0;
  List<Widget> pageList = <Widget>[Recommend(), All(), CatMain()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageTransitionSwitcher(
          transitionBuilder: (child, primaryAnimation, secondaryAnimation) =>
              FadeThroughTransition(
                  animation: primaryAnimation,
                  secondaryAnimation: secondaryAnimation,
                  child: child),
          child: SafeArea(child: pageList[pageIndex]),
        ),
        bottomNavigationBar: 
        
         SalomonBottomBar(
          selectedItemColor: Colors.green,
          currentIndex: pageIndex,
          onTap: (value) {
            setState(() {
              pageIndex = value;
            });
          },
          items: [
            SalomonBottomBarItem(icon: Icon(Icons.home), title: Text('Home')),
            SalomonBottomBarItem(icon: Icon(Icons.list), title: Text('Latest Jobs')),
            SalomonBottomBarItem(icon: Icon(Icons.category), title: Text('Categories')),

          ],
        ),
        );
  }
}
