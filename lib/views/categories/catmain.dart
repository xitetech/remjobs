import 'package:flutter/material.dart';
import 'package:restapi/main.dart';
import 'package:restapi/views/categories/cs.dart';
import 'package:restapi/views/categories/de.dart';
import 'package:restapi/views/categories/designer.dart';
import 'package:restapi/views/categories/developers.dart';
import 'package:restapi/views/categories/editing.dart';
import 'package:restapi/views/categories/finance.dart';
import 'package:restapi/views/categories/hr.dart';
import 'package:restapi/views/categories/legal.dart';
import 'package:restapi/views/categories/marketing.dart';
import 'package:restapi/views/categories/medical.dart';
import 'package:restapi/views/categories/oj.dart';
import 'package:restapi/views/categories/pm.dart';
import 'package:restapi/views/categories/sales.dart';
import 'package:restapi/views/categories/se.dart';
import 'package:restapi/views/categories/teaching.dart';
import 'package:restapi/views/categories/tech.dart';
import 'package:restapi/views/categories/va.dart';
import 'package:restapi/views/categories/ve.dart';
import 'package:restapi/views/categories/writing.dart';

class CatMain extends StatefulWidget {
  const CatMain({Key? key}) : super(key: key);

  @override
  State<CatMain> createState() => _CatMainState();
}

class _CatMainState extends State<CatMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              title: Text('JOB CATEGORIES'),
              backgroundColor: lgreen,
              foregroundColor: Colors.black,
              centerTitle: true,
              snap: true,
              floating: true,
            )
          ];
        },
        body: Stack(
          children: [
            Container(
              height: 300,
              color: lgreen,
            ),
            Container(
              padding: EdgeInsets.all(22),
              child: GridView.count(
                childAspectRatio: 2.9,
                crossAxisCount: 2,
                crossAxisSpacing: 33,
                mainAxisSpacing: 10,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => TechJobs()));
                    },
                    child: Card(
                      color: Color.fromARGB(255, 245, 217, 132),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 11),
                        child: Column(
                          children: [
                            Center(
                                child: Text(
                              'Technology',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditingJobs()));
                    },
                    child: Card(
                      color: Color.fromARGB(255, 251, 164, 132),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 11),
                        child: Column(
                          children: [
                            Center(
                                child: Text(
                              'Editing',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CsJobs()));
                    },
                    child: Card(
                      color: Color.fromARGB(255, 129, 251, 131),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 11),
                        child: Column(
                          children: [
                            Center(
                                child: Text(
                              'Customer Service',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => VaJobs()));
                    },
                    child: Card(
                      color: Color.fromARGB(255, 131, 250, 199),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 11),
                        child: Column(
                          children: [
                            Center(
                                child: Text(
                              'Virtual Assistant',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HrJobs()));
                    },
                    child: Card(
                      color: Color.fromARGB(255, 250, 130, 226),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 11),
                        child: Column(
                          children: [
                            Center(
                                child: Text(
                              'Human Resource',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WritingJobs()));
                    },
                    child: Card(
                      color: Color.fromARGB(255, 247, 129, 129),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 11),
                        child: Column(
                          children: [
                            Center(
                                child: Text(
                              'Writing',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FinanceJobs()));
                    },
                    child: Card(
                      color: Color.fromARGB(255, 166, 147, 88),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 11),
                        child: Column(
                          children: [
                            Center(
                                child: Text(
                              'Finance',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MarketingJobs()));
                    },
                    child: Card(
                      color: Color.fromARGB(255, 144, 132, 247),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 11),
                        child: Column(
                          children: [
                            Center(
                                child: Text(
                              'Marketing',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => DeJobs()));
                    },
                    child: Card(
                      color: Color.fromARGB(255, 133, 226, 246),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 11),
                        child: Column(
                          children: [
                            Center(
                                child: Text(
                              'Data Entry',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DeveloperJobs()));
                    },
                    child: Card(
                      color: Color.fromARGB(255, 246, 206, 131),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 11),
                        child: Column(
                          children: [
                            Center(
                                child: Text(
                              'Developer',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SalesJobs()));
                    },
                    child: Card(
                      color: Color.fromARGB(255, 245, 132, 132),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 11),
                        child: Column(
                          children: [
                            Center(
                                child: Text(
                              'Sales',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DesignerJobs()));
                    },
                    child: Card(
                      color: Color.fromARGB(255, 201, 131, 245),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 11),
                        child: Column(
                          children: [
                            Center(
                                child: Text(
                              'Designer',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => PmJobs()));
                    },
                    child: Card(
                      color: Color.fromARGB(255, 249, 246, 135),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 11),
                        child: Column(
                          children: [
                            Center(
                                child: Text(
                              'Project Manager',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => VeJobs()));
                    },
                    child: Card(
                      color: Color.fromARGB(255, 133, 178, 249),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 11),
                        child: Column(
                          children: [
                            Center(
                                child: Text(
                              'Video Editing',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TeachingJobs()));
                    },
                    child: Card(
                      color: Color.fromARGB(255, 119, 234, 121),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 11),
                        child: Column(
                          children: [
                            Center(
                                child: Text(
                              'Teaching',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MedicalJobs()));
                    },
                    child: Card(
                      color: Color.fromARGB(255, 251, 137, 213),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 11),
                        child: Column(
                          children: [
                            Center(
                                child: Text(
                              'Medical',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SmJobs()));
                    },
                    child: Card(
                      color: Color.fromARGB(255, 247, 179, 134),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 11),
                        child: Column(
                          children: [
                            Center(
                                child: Text(
                              'Social Media',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LegalJobs()));
                    },
                    child: Card(
                      color: Color.fromARGB(255, 131, 167, 245),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 11),
                        child: Column(
                          children: [
                            Center(
                                child: Text(
                              'Legal',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => OJobs()));
                    },
                    child: Card(
                      color: Color.fromARGB(255, 248, 150, 150),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 11),
                        child: Column(
                          children: [
                            Center(
                                child: Text(
                              'Other',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // child: Column(children: [
              //   Row(children: [
              //     Padding(
              //       padding: const EdgeInsets.all(15.0),
              //       child: Container(height: 90, width: 120, color: green,),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.all(15.0),
              //       child: Container(height: 90, width: 120, color: green,),
              //     )
              //   ],
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   )
              // ]),
            ),
          ],
        ),
      ),
    ));
  }
}
