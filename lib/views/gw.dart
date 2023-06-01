// import 'package:flutter/material.dart';
// import 'package:restapi/views/post.dart';
// import 'package:restapi/wp-api.dart';
// //import 'package:cached_network_image/cached_network_image.dart';
// //import 'package:path_provider/path_provider.dart';
// import 'package:progressive_image/progressive_image.dart';

// class Gw extends StatefulWidget {
//   @override
//   _GwState createState() => _GwState();
// }

// class _GwState extends State<Gw> {
//   //static const String placeholderImg = 'images/no_image.png';
//   final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
//       new GlobalKey<RefreshIndicatorState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //appBar: AppBar(
//       //title: Text('Rest Api'),
//       //centerTitle: true,),

//       body: RefreshIndicator(
//         key: _refreshIndicatorKey,
//         child: Container(
//           child: FutureBuilder(
//               future: GwPosts(),
//               builder: (context, AsyncSnapshot snapshot) {
//                 if (snapshot.hasData) {
//                   return Container(
//                     child: ListView.builder(
                      
//                         itemCount: snapshot.data.length,
//                         itemBuilder: (BuildContext context, int index) {
//                           Map wppost = snapshot.data[index];

//                           return PostTile(
//                             title: wppost["title"]["rendered"]
//                                 .replaceAll("#038;", ""),
//                             href: wppost["_links"]["wp:featuredmedia"][0]["href"],
//                             link: wppost["link"],
//                             content: wppost["content"]["rendered"],
//                             date: wppost['date'],
//                           );
//                         }),
//                   );
//                 }

//                 return Center(child: CircularProgressIndicator.adaptive());
//               }),
//         ),
//         onRefresh: _handleRefresh,
//       ),
//     );
//   }

//   Future<Null> _handleRefresh() {
//     return fetchWpPosts().then((title) => null);
//   }
// }

// class PostTile extends StatefulWidget {
//   final String href, title, date, content, link;

//   PostTile(
//       {required this.content,
//       required this.date,
//       required this.href,
//       required this.title,
//       required this.link});

//   @override
//   _PostTileState createState() => _PostTileState();
// }

// class _PostTileState extends State<PostTile> {
//   var imageUrl = "";

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (context) => Post(
//                       imageUrl: imageUrl,
//                       title: widget.title,
//                       desc: widget.content,
//                       date: widget.date,
//                       link: widget.link, 
//                       apply: widget.apply, 
//                       category: widget.category, 
//                       compname: widget.compname, 
//                       compweb: widget.compweb, 
//                       location: widget.location, 
//                       type: widget.type,
//                     )));
//       },
//       child: Container(
//         color: Colors.cyanAccent[00],
//         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//         child: Column(children: [
//           FutureBuilder(
//             future: fetchWpPostImageUrl(widget.href),
//             builder: (context, AsyncSnapshot snapshot) {
//               if (snapshot.hasData) {
//                 imageUrl = snapshot.data["source_url"];
//                 return Hero(
//                   tag: 'home-${widget.date}',
//                   child: ProgressiveImage(
//                     placeholder: AssetImage('images/no_image.png'),
//                     image: NetworkImage((snapshot.data["source_url"])),
//                     thumbnail: NetworkImage((snapshot.data["source_url"])),
//                     width: 360,
//                     height: 250,
//                     fit: BoxFit.cover,
//                   ),
//                 );
//               }

//               return Image(image: AssetImage('images/no_image.png'));
//             },
//           ),
//           SizedBox(height: 8),
//           Text(widget.title,
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
//           // SizedBox(height: 5),

//           Text(widget.date)
//         ]),
//       ),
//     );
//   }
// }
