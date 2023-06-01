import 'package:flutter/material.dart';
import 'package:restapi/main.dart';
import 'package:restapi/views/postile.dart';
import 'package:restapi/wp-api.dart';

class TechJobs extends StatefulWidget {
  @override
  _HomeyState createState() => _HomeyState();
}

class _HomeyState extends State<TechJobs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                title: Text('TECH JOBS'),
                backgroundColor: lgreen,
                foregroundColor: Colors.black,
                centerTitle: true,
                snap: true,
                floating: true,
                elevation: 10,
                shadowColor: green,
              )
            ];
          },
          body: Container(
            child: FutureBuilder(
                future: techJobsApi(),
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
                            href: wppost["_links"]["wp:featuredmedia"][0]
                                ["href"],
                            link: wppost["link"],
                            content: wppost["content"]["rendered"],
                            date: wppost['date'],
                            type: wppost['job-types'][0].toString(),
                            location: wppost['meta']['_job_location']
                                .replaceAll('Locations', '')
                                .replaceAll('in the world', ''),
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

                  return loading();
                }),
          ),
        ),
      ),
    );
  }
}
