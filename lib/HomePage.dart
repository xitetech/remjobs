import 'package:flutter/material.dart';
import 'package:restapi/main.dart';
import 'package:restapi/views/home.dart';
import 'package:restapi/views/recommended.dart';
import 'package:restapi/widgets/homeAppBar.dart';
import 'package:restapi/widgets/taglist.dart';

class Homepage extends StatefulWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          color: lgreen,
          height: 300,
        ),
        SafeArea(
          child: Container(
            height: 1111,
            child: Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HomeAppBar(),
                      Container(
                        margin: EdgeInsets.all(22),
                        child: Text(
                          'Welcome to the Homepage',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 10),
                         child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              'Latest Jobs',
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                            )),
                       ),
                      Container(
                        height: 135,
                        child: Homey(),
                        ),
                        SizedBox(height: 13),
                        TagList(),
                        SizedBox(height: 16),
                
                        Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 16),
                         child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              'Recommended',
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                            )),
                       ),
                      Container(
                        color: amber,
                        height: 1121,
                      )
                      // Expanded(
                      //     // height: 700,
                      //     child: Card(child: Recommend()),
                      //   ),
                     
                    ],
                  ),
                ),
              ),
            ),
          ),
        
      ]),
      //  bottomNavigationBar: BottomNavigationBar(
      //   selectedItemColor: Colors.green,
      //   type: BottomNavigationBarType.fixed,
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //     BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Latest Jobs'),
      //     BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Categories'),
          
      //   ],
      // ),
    );
  }
}