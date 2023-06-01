import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:restapi/main.dart';
import 'package:restapi/views/post.dart';
import 'package:url_launcher/url_launcher.dart';

import '../wp-api.dart';

class PostTile extends StatefulWidget {
  final href,
      title,
      date,
      content,
      link,
      location,
      apply,
      compname,
      compweb,
      type,
      // col,
      category;

  PostTile(
      {
      // required this.col,
      required this.content,
      required this.date,
      required this.href,
      required this.title,
      required this.location,
      required this.category,
      required this.compname,
      required this.compweb,
      required this.apply,
      required this.link,
      required this.type});

  @override
  _PostTileState createState() => _PostTileState();
}

class _PostTileState extends State<PostTile> {
  var imageUrl = "";
  var cate = '';

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

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Post(
                      imageUrl: imageUrl,
                      title: widget.title,
                      desc: widget.content,
                      date: widget.date,
                      link: widget.link,
                      apply: widget.apply,
                      category: widget.category,
                      compname: widget.compname,
                      compweb: widget.compweb,
                      location: widget.location,
                      type: widget.type,
                      // location: widget.location
                    )));
      },
      child: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Card(
            elevation: 2,
            
            child: ListTile(
              leading: FutureBuilder(
                  future: fetchWpPostImageUrl(widget.href),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      imageUrl = snapshot.data["source_url"];
                      return ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: CircleAvatar(
                            backgroundImage:
                                NetworkImage(snapshot.data['source_url']),
                          ));
                    }
                    return Image(image: AssetImage('images/no_image1.png'));
                  }),
              title: Text(widget.title),
              // isThreeLine: true,
              subtitle: Text('${widget.compname}, ${widget.location}'),
              trailing: ElevatedButton(
                child: Text(
                  'Apply',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                onPressed: () {
                  onLinkTap(widget.apply);
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(green)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget loading() {
  return Container(
      color: Color.fromARGB(255, 223, 248, 236),
      child: SafeArea(
        child: Container(
          height: 100,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 290, horizontal: 150),
              child: LoadingIndicator(
                indicatorType: Indicator.ballRotateChase,
                colors: [green, lgreen],
                strokeWidth: 3,
              ),
            ),
          ),
        ),
      ));
}
