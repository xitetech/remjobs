//import 'dart:html';

//import 'dart:html';

import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'main.dart';

Future<List> latestJobsApi() async{
  final posts = Hive.box(ApiAll).get('posts' , defaultValue: []);
  if(posts.isNotEmpty) return posts;
  final client = http.Client();
  final response = await client.get(Uri.parse("https://remote.co/wp-json/wp/v2/job-listings?per_page=100"),
    headers: {"Accept": "application/json"});
    //print(response);
  var converted = jsonDecode(response.body);
      Hive.box(ApiAll).put("posts", converted);
  return converted;
}

Future<List> editingJobsApi() async{
  final posts = Hive.box(ApiEditing).get('posts' , defaultValue: []);
  if(posts.isNotEmpty) return posts;
  final client = http.Client();
  final response = await client.get(Uri.parse("https://remote.co/wp-json/wp/v2/job-listings?job-categories=230&per_page=50"),
    headers: {"Accept": "application/json"});
    //print(response);
  var converted = jsonDecode(response.body);
      Hive.box(ApiEditing).put("posts", converted);
  return converted;
}

Future<List> csJobsApi() async{
  final posts = Hive.box(ApiCs).get('posts' , defaultValue: []);
  if(posts.isNotEmpty) return posts;
  final client = http.Client();
  final response = await client.get(Uri.parse("https://remote.co/wp-json/wp/v2/job-listings?job-categories=53&per_page=50"),
    headers: {"Accept": "application/json"});
    //print(response);
  var converted = jsonDecode(response.body);
      Hive.box(ApiCs).put("posts", converted);
  return converted;
}

Future<List> vaJobsApi() async{
  final posts = Hive.box(ApiVa).get('posts' , defaultValue: []);
  if(posts.isNotEmpty) return posts;
  final client = http.Client();
  final response = await client.get(Uri.parse("https://remote.co/wp-json/wp/v2/job-listings?job-categories=215&per_page=50"),
    headers: {"Accept": "application/json"});
    //print(response);
  var converted = jsonDecode(response.body);
      Hive.box(ApiVa).put("posts", converted);
  return converted;
}

Future<List> hrJobsApi() async{
  final posts = Hive.box(ApiHr).get('posts' , defaultValue: []);
  if(posts.isNotEmpty) return posts;
  final client = http.Client();
  final response = await client.get(Uri.parse("https://remote.co/wp-json/wp/v2/job-listings?job-categories=56&per_page=50"),
    headers: {"Accept": "application/json"});
    //print(response);
  var converted = jsonDecode(response.body);
      Hive.box(ApiHr).put("posts", converted);
  return converted;
}

Future<List> ojJobsApi() async{
  final posts = Hive.box(ApiOj).get('posts' , defaultValue: []);
  if(posts.isNotEmpty) return posts;
  final client = http.Client();
  final response = await client.get(Uri.parse("https://remote.co/wp-json/wp/v2/job-listings?job-categories=59&per_page=50"),
    headers: {"Accept": "application/json"});
    //print(response);
  var converted = jsonDecode(response.body);
      Hive.box(ApiOj).put("posts", converted);
  return converted;
}

Future<List> writingJobsApi() async{
  final posts = Hive.box(ApiWriting).get('posts' , defaultValue: []);
  if(posts.isNotEmpty) return posts;
  final client = http.Client();
  final response = await client.get(Uri.parse("https://remote.co/wp-json/wp/v2/job-listings?job-categories=63&per_page=50"),
    headers: {"Accept": "application/json"});
    //print(response);
  var converted = jsonDecode(response.body);
      Hive.box(ApiWriting).put("posts", converted);
  return converted;
}

Future<List> financeJobsApi() async{
  final posts = Hive.box(ApiFinance).get('posts' , defaultValue: []);
  if(posts.isNotEmpty) return posts;
  final client = http.Client();
  final response = await client.get(Uri.parse("https://remote.co/wp-json/wp/v2/job-listings?job-categories=52&per_page=50"),
    headers: {"Accept": "application/json"});
    //print(response);
  var converted = jsonDecode(response.body);
      Hive.box(ApiFinance).put("posts", converted);
  return converted;
}

Future<List> marketingJobsApi() async{
  final posts = Hive.box(ApiMarketing).get('posts' , defaultValue: []);
  if(posts.isNotEmpty) return posts;
  final client = http.Client();
  final response = await client.get(Uri.parse("https://remote.co/wp-json/wp/v2/job-listings?job-categories=57&per_page=50"),
    headers: {"Accept": "application/json"});
    //print(response);
  var converted = jsonDecode(response.body);
      Hive.box(ApiMarketing).put("posts", converted);
  return converted;
}

Future<List> deJobsApi() async{
  final posts = Hive.box(ApiDe).get('posts' , defaultValue: []);
  if(posts.isNotEmpty) return posts;
  final client = http.Client();
  final response = await client.get(Uri.parse("https://remote.co/wp-json/wp/v2/job-listings?job-categories=239&per_page=50"),
    headers: {"Accept": "application/json"});
    //print(response);
  var converted = jsonDecode(response.body);
      Hive.box(ApiDe).put("posts", converted);
  return converted;
}

Future<List> developerJobsApi() async{
  final posts = Hive.box(ApiDeveloper).get('posts' , defaultValue: []);
  if(posts.isNotEmpty) return posts;
  final client = http.Client();
  final response = await client.get(Uri.parse("https://remote.co/wp-json/wp/v2/job-listings?job-categories=60&per_page=50"),
    headers: {"Accept": "application/json"});
    //print(response);
  var converted = jsonDecode(response.body);
      Hive.box(ApiDeveloper).put("posts", converted);
  return converted;
}

Future<List> salesJobsApi() async{
  final posts = Hive.box(ApiSales).get('posts' , defaultValue: []);
  if(posts.isNotEmpty) return posts;
  final client = http.Client();
  final response = await client.get(Uri.parse("https://remote.co/wp-json/wp/v2/job-listings?job-categories=131&per_page=50"),
    headers: {"Accept": "application/json"});
    //print(response);
  var converted = jsonDecode(response.body);
      Hive.box(ApiSales).put("posts", converted);
  return converted;
}

Future<List> designerJobsApi() async{
  final posts = Hive.box(ApiDesigner).get('posts' , defaultValue: []);
  if(posts.isNotEmpty) return posts;
  final client = http.Client();
  final response = await client.get(Uri.parse("https://remote.co/wp-json/wp/v2/job-listings?job-categories=261&per_page=50"),
    headers: {"Accept": "application/json"});
    //print(response);
  var converted = jsonDecode(response.body);
      Hive.box(ApiDesigner).put("posts", converted);
  return converted;
}

Future<List> techJobsApi() async{
  final posts = Hive.box(ApiTech).get('posts' , defaultValue: []);
  if(posts.isNotEmpty) return posts;
  final client = http.Client();
  final response = await client.get(Uri.parse("https://remote.co/wp-json/wp/v2/job-listings?job-categories=223&per_page=50"),
    headers: {"Accept": "application/json"});
    //print(response);
  var converted = jsonDecode(response.body);
      Hive.box(ApiTech).put("posts", converted);
  return converted;
}

Future<List> pmJobsApi() async{
  final posts = Hive.box(ApiPm).get('posts' , defaultValue: []);
  if(posts.isNotEmpty) return posts;
  final client = http.Client();
  final response = await client.get(Uri.parse("https://remote.co/wp-json/wp/v2/job-listings?job-categories=139&per_page=50"),
    headers: {"Accept": "application/json"});
    //print(response);
  var converted = jsonDecode(response.body);
      Hive.box(ApiPm).put("posts", converted);
  return converted;
}

Future<List> veJobsApi() async{
  final posts = Hive.box(ApiVe).get('posts' , defaultValue: []);
  if(posts.isNotEmpty) return posts;
  final client = http.Client();
  final response = await client.get(Uri.parse("https://remote.co/wp-json/wp/v2/job-listings?job-categories=263&per_page=50"),
    headers: {"Accept": "application/json"});
    //print(response);
  var converted = jsonDecode(response.body);
      Hive.box(ApiVe).put("posts", converted);
  return converted;
}

Future<List> teachingJobsApi() async{
  final posts = Hive.box(ApiTeaching).get('posts' , defaultValue: []);
  if(posts.isNotEmpty) return posts;
  final client = http.Client();
  final response = await client.get(Uri.parse("https://remote.co/wp-json/wp/v2/job-listings?job-categories=220&per_page=50"),
    headers: {"Accept": "application/json"});
    //print(response);
  var converted = jsonDecode(response.body);
      Hive.box(ApiTeaching).put("posts", converted);
  return converted;
}

Future<List> medicalJobsApi() async{
  final posts = Hive.box(ApiMedical).get('posts' , defaultValue: []);
  if(posts.isNotEmpty) return posts;
  final client = http.Client();
  final response = await client.get(Uri.parse("https://remote.co/wp-json/wp/v2/job-listings?job-categories=219&per_page=50"),
    headers: {"Accept": "application/json"});
    //print(response);
  var converted = jsonDecode(response.body);
      Hive.box(ApiMedical).put("posts", converted);
  return converted;
}

Future<List> smJobsApi() async{
  final posts = Hive.box(ApiSm).get('posts' , defaultValue: []);
  if(posts.isNotEmpty) return posts;
  final client = http.Client();
  final response = await client.get(Uri.parse("https://remote.co/wp-json/wp/v2/job-listings?job-categories=248&per_page=50"),
    headers: {"Accept": "application/json"});
    //print(response);
  var converted = jsonDecode(response.body);
      Hive.box(ApiSm).put("posts", converted);
  return converted;
}

Future<List> legalJobsApi() async{
  final posts = Hive.box(ApiLegal).get('posts' , defaultValue: []);
  if(posts.isNotEmpty) return posts;
  final client = http.Client();
  final response = await client.get(Uri.parse("https://remote.co/wp-json/wp/v2/job-listings?job-categories=246&per_page=50"),
    headers: {"Accept": "application/json"});
    //print(response);
  var converted = jsonDecode(response.body);
      Hive.box(ApiLegal).put("posts", converted);
  return converted;
}



Future fetchWpPostImageUrl(href) async{
  final client = http.Client();
  final response = await client.get(Uri.parse(href), headers: {"Accept": "application/json"});

  var converted = jsonDecode(response.body);
  return converted;

}
