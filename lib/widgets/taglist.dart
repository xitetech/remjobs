import 'package:flutter/material.dart';

class TagList extends StatefulWidget {
  @override
  _TagListState createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  final taglist = <String>['Technology', 'Project Management', 'Marketing', 'Customer Service', 'Virtual Assistant', 'Editing', 'Teaching', ];
  var selected = 222;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Container(
            child: Text(
              'Categories',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            alignment: Alignment.centerLeft,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          height: 40,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  selected = index;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                    color:
                        selected == index ? Colors.amberAccent : Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: selected == index ? Colors.amber : Colors.amber,
                    )),
                child: Text(taglist[index]),
              ),
            ),
            separatorBuilder: (_, index) => SizedBox(
              width: 15,
            ),
            itemCount: taglist.length,
          ),
        ),
      ],
    );
  }
}
