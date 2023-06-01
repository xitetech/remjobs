import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:progressive_image/progressive_image.dart';
import 'package:restapi/main.dart';
import 'package:url_launcher/url_launcher.dart';

class Post extends StatefulWidget {
  final String imageUrl,
      title,
      desc,
      link,
      date,
      category,
      location,
      apply,
      compname,
      compweb,
      type;

  Post(
      {required this.imageUrl,
      required this.title,
      required this.desc,
      required this.link,
      required this.date,
      required this.category,
      required this.location,
      required this.apply,
      required this.compname,
      required this.compweb,
      required this.type});

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  final taglist = <String>['Details', 'Company'];
  var selected = 0;

  Future<void> onLinkTap(url) async {
    // print (url);
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
      );
      return;
    }
  }

  Widget postContent(htmlContent) {
    return Html(data: htmlContent, style: {
      // 'p': Style(backgroundColor: Colors.blue, ),
      "ul": Style(
        fontSize: FontSize.large,
        backgroundColor: lgreen,
      ),
      "h3": Style(fontSize: FontSize.larger, backgroundColor: Colors.cyan),
    });
  }

  Widget postDetails() {
    return Container(
      child: Column(children: [
        SizedBox(height: 8),
        postContent(widget.desc),
        SizedBox(height: 4)
      ]),
    );
  }

  Widget postCompany() {
    return Card(
      elevation: 22,
      child: Container(
          color: lgreen,
          child: DataTable(
            columns: [
              DataColumn(label: Text('')),
              DataColumn(label: Text('')),
            ],
            dividerThickness: 5,
            headingRowHeight: 0,
            dataTextStyle: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),
            rows: [
              DataRow(cells: [
                DataCell(Text(
                  'Job Title',
                  style: TextStyle(fontWeight: FontWeight.normal),
                )),
                DataCell(Text(
                  widget.title,
                  style: TextStyle(fontSize: 13),
                )),
              ]),
              DataRow(cells: [
                DataCell(Text(
                  'Company Name',
                  style: TextStyle(fontWeight: FontWeight.normal),
                )),
                DataCell(Text(widget.compname)),
              ]),
              DataRow(cells: [
                DataCell(Text(
                  'Company Website',
                  style: TextStyle(fontWeight: FontWeight.normal),
                )),
                DataCell(Text(
                  widget.compweb,
                  style: TextStyle(fontSize: 13),
                )),
              ]),
              DataRow(cells: [
                DataCell(Text(
                  'Job Location',
                  style: TextStyle(fontWeight: FontWeight.normal),
                )),
                DataCell(Text(widget.location)),
              ]),
            ],
          )),
    );
  }

  Widget postApply() {
    return Text('Apply');
  }

  Widget post2() {
    if (selected < 5) {
      setState(() {
        postDetails();
      });
    }
    return postCompany();
  }

  Widget buildMessageButton() => FloatingActionButton.extended(
      label: Text("Get Bonus"),
      backgroundColor: Colors.green,
      icon: Icon(Icons.open_in_browser_rounded),
      onPressed: () {
        onLinkTap(widget.link);
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterButtons: [
        GestureDetector(
          onTap: () {
            onLinkTap(widget.apply);
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              color: green,
              width: MediaQuery.of(context).size.width,
              height: 45,
              child: Card(
                elevation: 111,
                color: green,
                child: Text(
                  'Apply For Job',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
                ),
              ),
            ),
          ),
        )
      ],
      // floatingActionButton: buildMessageButton(),
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                title: Text('JOB DETAILS'),
                backgroundColor: lgreen,
                foregroundColor: Colors.black,
                centerTitle: true,
                snap: true,
                floating: true,
                elevation: 22,
                shadowColor: green,
                // pinned: true,
              )
            ];
          },
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    elevation: 22,
                    child: Column(
                      children: [
                        Row(children: [
                          Container(
                            margin: EdgeInsets.only(left: 0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(250),
                              child: Container(
                                height: 75,
                                width: 75,
                                child: ProgressiveImage(
                                  placeholder:
                                      AssetImage('images/no_image.png'),
                                  image: NetworkImage(widget.imageUrl),
                                  thumbnail: NetworkImage(widget.imageUrl),
                                  width: 360,
                                  height: 250,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              Container(
                                width: 235,
                                child: Text(
                                  widget.title,
                                  textAlign: TextAlign.left,
                                  maxLines: 1,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                  width: 235,
                                  child: Text(
                                    widget.compname,
                                    textAlign: TextAlign.left,
                                  ))
                            ],
                          )
                        ]),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          height: 40,
                          child: ListView.separated(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => GestureDetector(
                              onTap: () {
                                setState(() {
                                  selected = index;
                                });
                              },
                              child: Card(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 5,
                                  ),
                                  decoration: BoxDecoration(
                                      color: selected == index
                                          ? Colors.amberAccent
                                          : Colors.white,
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                        color: selected == index
                                            ? Colors.amber
                                            : Colors.amber,
                                      )),
                                  child: Text(
                                    taglist[index],
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                            ),
                            separatorBuilder: (_, index) => SizedBox(
                              width: 15,
                            ),
                            itemCount: taglist.length,
                          ),
                        ),
                        SizedBox(height: 8),
                      ],
                    ),
                  ),
                  if (selected == 0) ...[
                    postDetails(),
                  ],
                  SizedBox(
                    height: 8,
                  ),
                  if (selected == 1) ...[
                    postCompany(),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
