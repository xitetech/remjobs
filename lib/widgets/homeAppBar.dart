import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Text('Hi, Welcome', style: TextStyle(color: Colors.black,
            fontWeight: FontWeight.bold),),
            // SizedBox(height: 20,),
            // Text('Welcome to remote job finder', style: TextStyle(fontWeight: FontWeight.bold,
            // fontSize: 28),)
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30, right: 10),
              transform: Matrix4.rotationX(100),
              child: Stack(children: [
                Icon(Icons.notifications_none_outlined,
                size: 33,
                color: Colors.grey,),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(color: Colors.red,
                    shape: BoxShape.circle
                    ),
                  ),
                )
              ],),
            ),
            SizedBox(width: 2,),
              // ClipOval(child: Image(
              //   image: AssetImage('images/ggg.png'),
              //   width: 4,
              // ))
              
          ],
        ),
      ],),
    );
  }
}