import 'package:flutter/material.dart';

class Slide extends StatefulWidget {
  const Slide({Key? key}) : super(key: key);

  @override
  State<Slide> createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black,
      height: 300,
      child: Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.width * 0.92,
              child: Text(
                'Featured Jobs',
                textAlign: TextAlign.left,
              )),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  height: 170,
                  width: 270,
                  child: Card(
                    color: Colors.red,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  height: 170,
                  width: 270,
                  child: Card(
                    elevation: 50,
                    color: Colors.red,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  height: 170,
                  width: 270,
                  child: Card(
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
