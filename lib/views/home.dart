import 'package:flutter/material.dart';
import 'package:restapi/main.dart';
import 'package:restapi/views/post.dart';
import 'package:restapi/wp-api.dart';

class Homey extends StatefulWidget {
  @override
  _HomeyState createState() => _HomeyState();
}

class _HomeyState extends State<Homey> {
 
  var col = [
    Color.fromARGB(255, 21, 131, 24),
    Colors.white,
    Color.fromARGB(255, 21, 131, 24),
    Colors.white,
    Color.fromARGB(255, 21, 131, 24),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //title: Text('Rest Api'),
      //centerTitle: true,),

      body: Container(
        child: FutureBuilder(
            future: latestJobsApi(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.hasData)  {
                return ListView.builder(
                    // scrollDirection: Axis.vertical,
                    itemCount: 31,
                    itemBuilder: (BuildContext context, int index) {
                      Map wppost = snapshot.data[index];
                      // if(index == 1){
                      //   col = Colors.amberAccent;
                      // }
                      return PostTile(
                        // col: wppost[col[index]],
                        title: wppost["title"]["rendered"]
                            .replaceAll("#038;", "")
                            .toString()
                            .replaceAll('&#8211;', '-'),
                        href: wppost["_links"]["wp:featuredmedia"][0]["href"],
                        link: wppost["link"],
                        type: wppost['date'],
                        content: wppost["content"]["rendered"],
                        date: wppost['date'],
                        location: wppost['meta']['_job_location'],
                        apply: wppost['meta']['_application'],
                        compname: wppost['meta']['_company_name'],
                        compweb: wppost['meta']['_company_website'],
                        category: wppost['job-categories'] 
                            .toString()
                            .split(',')
                            .last
                            .replaceAll('[', '')
                            .replaceAll(' ', ''),
                      );
                    });
              }

              return Container(
                color: Color.fromARGB(255, 223, 248, 236),
              );
            }),
      ),
    );
  }

  //Future<Null> _refreshed()  {
  //return
  //setState(() => fetchWpPosts = refreshedPosts()

  //)

  //}
}

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

  PostTile({
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
    required this.type
  });

  @override
  _PostTileState createState() => _PostTileState();
}

class _PostTileState extends State<PostTile> {
  var imageUrl = "";
  var cate = '';

  @override
  Widget build(BuildContext context) {
    if (widget.category == '230]') {
      setState(() {
        cate = 'Editing';
      });
    }

    if (widget.category == '53]') {
      setState(() {
        cate = 'Customer Service';
      });
    }

    if (widget.category == '215]') {
      setState(() {
        cate = 'Virtual Assistant ';
      });
    }
    if (widget.category == '56]') {
      setState(() {
        cate = 'Human Resource';
      });
    }
    if (widget.category == '59]') {
      setState(() {
        cate = 'Other Jobs';
      });
    }
    if (widget.category == '63]') {
      setState(() {
        cate = 'Writing';
      });
    }
    if (widget.category == '230]') {
      setState(() {
        cate = 'Editing';
      });
    }
    if (widget.category == '52]') {
      setState(() {
        cate = 'Finance';
      });
    }
    if (widget.category == '249]') {
      setState(() {
        cate = 'Finance';
      });
    }
    if (widget.category == '57]') {
      setState(() {
        cate = 'Marketing';
      });
    }
    if (widget.category == '239]') {
      setState(() {
        cate = 'Data Entry';
      });
    }
    if (widget.category == '60]') {
      setState(() {
        cate = 'Developer';
      });
    }
    if (widget.category == '268]') {
      setState(() {
        cate = 'Developer';
      });
    }
    if (widget.category == '131]') {
      setState(() {
        cate = 'Sales';
      });
    }
    if (widget.category == '261]') {
      setState(() {
        cate = 'Designer';
      });
    }
    if (widget.category == '223]') {
      setState(() {
        cate = 'Technology';
      });
    }
    if (widget.category == '139]') {
      setState(() {
        cate = 'Project Management';
      });
    }
    if (widget.category == '263]') {
      setState(() {
        cate = 'Video Editing';
      });
    }
    if (widget.category == '152]') {
      setState(() {
        cate = 'Teaching';
      });
    }
    if (widget.category == '220]') {
      setState(() {
        cate = 'Teaching';
      });
    }
      if (widget.category == '219]') {
      setState(() {
        cate = 'Medical';
      });
    }
    if (widget.category == '248]') {
      setState(() {
        cate = 'Social Media';
      });
    }
    if (widget.category == '246]') {
      setState(() {
        cate = 'Legal';
      });
    }
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
                    )));
      },
      child: Container(
        // color: Color.fromARGB(255, 209, 11, 93),
        child: Column(
          children: [
            // Container(
            //     width: MediaQuery.of(context).size.width * 0.92,
            //     child: Text(
            //       'Featured Jobs',
            //       textAlign: TextAlign.left,
            //     )),
            Container(
              // color: Color.fromARGB(255, 223, 248, 236),
              child: Row(
                children: [
                  SizedBox(
                      width: 7,
                      ),
                  Container(
                    color: Color.fromARGB(255, 223, 248, 236),
                    margin: EdgeInsets.symmetric(vertical: 0, horizontal: 1),
                    height: 135,
                    width: 220,
                    child: DefaultTextStyle(
                      style: TextStyle(color: Colors.white),
                      child: Card(
                        color: green,
                        child: DefaultTextStyle(
                          style: TextStyle(color: Colors.white),
                          child: Container(
                            margin: EdgeInsets.all(13),
                            child: Column(children: [
                              Row(
                                children: [
                                  FutureBuilder(
                                      future: fetchWpPostImageUrl(widget.href),
                                      builder:
                                          (context, AsyncSnapshot snapshot) {
                                        if (snapshot.hasData) {
                                          imageUrl =
                                              snapshot.data["source_url"];
                                          return ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              child: CircleAvatar(
                                                backgroundImage: NetworkImage(
                                                    snapshot
                                                        .data['source_url']),
                                              ));
                                        }
                                        return Image(
                                            image: AssetImage(
                                                'images/no_image1.png'));
                                      }),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 130,
                                          child: Text(
                                            widget.compname,
                                            maxLines: 1,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                            width: 130,
                                            child: Text(
                                              widget.location,
                                              maxLines: 1,
                                              textAlign: TextAlign.left,
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.92,
                                      child: Text(
                                        widget.title,
                                        maxLines: 1,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                      width: 277,
                                      child: Row(
                                        children: [
                                          Text(
                                            cate,
                                            textAlign: TextAlign.left,
                                          ),
                                          
                                        ],
                                      )),
                                  
                                ],
                              )
                            ]),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
