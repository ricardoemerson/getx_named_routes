import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteMiddlewares extends GetMiddleware {
  RouteMiddlewares({super.priority});

  @override
  GetPage? onPageCalled(GetPage? page) {
    debugPrint('Executando o middleware onPageCalled.');

    return super.onPageCalled(page);
  }

  @override
  Widget onPageBuilt(Widget page) {
    debugPrint('Executando o middleware onPageBuilt.');

    return Theme(data: ThemeData.dark(), child: page);
  }

  @override
  void onPageDispose() {
    debugPrint('Executando o middleware onPageDispose.');

    super.onPageDispose();
  }

  @override
  RouteSettings? redirect(String? route) {
    debugPrint('route: $route');
    if (route == '/start') {
      return const RouteSettings(
        name: '/access-denied',
      );
    }

    return null;
  }
}
