import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/home/home_page.dart';
import 'pages/page_not_found/page_not_found_page.dart';
import 'pages/start/start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Named Routes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      getPages: [
        GetPage(name: '/home', page: HomePage.new),
        GetPage(name: '/start', page: StartPage.new),
      ],
      unknownRoute: GetPage(name: '/404', page: PageNotFoundPage.new),
    );
  }
}
