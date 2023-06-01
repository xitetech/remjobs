import 'package:flutter/material.dart';
import 'package:restapi/views/BNF.dart';
import 'package:hive_flutter/hive_flutter.dart';
const String ApiAll = "apiAll";
const String ApiEditing = "apiEditing";
const String ApiCs = "apiCs";
const String ApiVa = "apiVa";
const String ApiHr = "apiHr";
const String ApiOj = "apiOj";
const String ApiWriting = "apiWriting";
const String ApiFinance = "apiFinance";
const String ApiMarketing = "apiMarketing";
const String ApiDe = "apiDe";
const String ApiDeveloper = "apiDeveloper";
const String ApiSales = "apiSales";
const String ApiDesigner = "apiDesigner";
const String ApiTech = "apiTech";
const String ApiPm = "apiPm";
const String ApiVe = "apiVe";
const String ApiTeaching = "apiTeaching";
const String ApiSm = "apiSm";
const String ApiMedical = "apiMedical";
const String ApiLegal = "apiLegal";
const Color lgreen = Color.fromARGB(255, 193, 246, 221);
const Color green = Color.fromARGB(255, 21, 131, 24);
const Color amber = Colors.amber;


void main() async {
  await Hive.initFlutter();
  await Hive.openBox(ApiAll);
  await Hive.openBox(ApiEditing);
  await Hive.openBox(ApiCs);
  await Hive.openBox(ApiVa);
  await Hive.openBox(ApiHr);
  await Hive.openBox(ApiOj);
  await Hive.openBox(ApiWriting);
  await Hive.openBox(ApiMarketing);
  await Hive.openBox(ApiFinance);
  await Hive.openBox(ApiDe);
  await Hive.openBox(ApiDesigner);
  await Hive.openBox(ApiDeveloper);
  await Hive.openBox(ApiSales);
  await Hive.openBox(ApiTech);
  await Hive.openBox(ApiPm);
  await Hive.openBox(ApiVe);
  await Hive.openBox(ApiTeaching);
  await Hive.openBox(ApiMedical);
  await Hive.openBox(ApiSm);
  await Hive.openBox(ApiLegal);
  await Hive.box(ApiAll).clear();
  await Hive.box(ApiEditing).clear();
  await Hive.box(ApiCs).clear();
  await Hive.box(ApiVa).clear();
  await Hive.box(ApiHr).clear();
  await Hive.box(ApiOj).clear();
  await Hive.box(ApiWriting).clear();
  await Hive.box(ApiMarketing).clear();
  await Hive.box(ApiFinance).clear();
  await Hive.box(ApiDe).clear();
  await Hive.box(ApiDesigner).clear();
  await Hive.box(ApiDeveloper).clear();
  await Hive.box(ApiSales).clear();
  await Hive.box(ApiTech).clear();
  await Hive.box(ApiPm).clear();
  await Hive.box(ApiVe).clear();
  await Hive.box(ApiTeaching).clear();
  await Hive.box(ApiMedical).clear();
  await Hive.box(ApiSm).clear();
  await Hive.box(ApiLegal).clear();
  ErrorWidget.builder = (FlutterErrorDetails) =>
  Scaffold(
    body: Center(
      child: Text('Something Went Wrong, Please Restart The App')
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Btf(), 
    );
  }
}

