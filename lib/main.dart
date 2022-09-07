import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/home/home_page.dart';
import 'pages/page_not_found/page_not_found_page.dart';
import 'pages/sent_parameters/arguments_params/arguments_params_page.dart';
import 'pages/sent_parameters/path_params/path_params_page.dart';
import 'pages/sent_parameters/query_params/query_params_page.dart';
import 'pages/sent_parameters/sent_parameters_page.dart';
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
        GetPage(
          name: '/sent-parameters',
          page: SentParametersPage.new,
          children: [
            GetPage(name: '/arguments', page: ArgumentsParamsPage.new),
            GetPage(name: '/path-params/:name', page: PathParamsPage.new),
            GetPage(name: '/query-params', page: QueryParamsPage.new),
          ],
        ),
      ],
      unknownRoute: GetPage(name: '/404', page: PageNotFoundPage.new),
    );
  }
}
