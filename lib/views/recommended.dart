import 'package:flutter/material.dart';
import 'package:restapi/main.dart';
import 'package:restapi/views/home.dart';
import 'package:restapi/views/post.dart';
import 'package:restapi/widgets/homeAppBar.dart';
import 'package:restapi/wp-api.dart';

class Recommend extends StatefulWidget {
  @override
  _HomeyState createState() => _HomeyState();
}

class _HomeyState extends State<Recommend> {
 
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
      body: FutureBuilder(
          future: latestJobsApi(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    Map wppost = snapshot.data[index];
                    return PostTile(
                      title: wppost["title"]["rendered"]
                          .replaceAll("#038;", "")
                          .toString()
                          .replaceAll('&#8211;', '-'),
                      href: wppost["_links"]["wp:featuredmedia"][0]["href"],
                      link: wppost["link"],
                      content: wppost["content"]["rendered"],
                      date: wppost['date'],
                      type: wppost['job-types'] [0].toString(),
                      location: wppost['meta']['_job_location'].replaceAll('Locations', '').replaceAll('in the world', ''),
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
    );
  }

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
    if(widget.type == '231'){
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
                      category: widget.category,
                      location: widget.location,
                      apply: widget.apply,
                      compname: widget.compname,
                      compweb: widget.compweb,
                      type: widget.type
                      // location: widget.location
                    )));
      },
      child: Column(
        children: [
          Stack(children: [
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
                        // SizedBox(height: 13),
                        // TagList(),
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
                        height: 121,
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
          Container(
            child: Card(
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
                trailing: ElevatedButton(child: Text('Apply',style: TextStyle(color: Colors.white,fontSize: 14),),
                onPressed: null,
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(green))
                ,),
              ),
            ),
          ),
        ],
      ),
    );
    }
    return Container();
  }
}
