import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'android/android_page.dart';
import 'apple/apple_page.dart';

class NestedNavigationPage extends StatelessWidget {
  final currentBottomNavigationIndex = 0.obs;

  NestedNavigationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NestedNavigationPage'),
        centerTitle: true,
      ),
      body: Navigator(
        initialRoute: '/android',
        key: Get.nestedKey(1),
        onGenerateRoute: (settings) {
          Widget page;
          Transition transition;

          if (settings.name == '/android') {
            page = const AndroidPage();
            transition = Transition.leftToRight;
          } else if (settings.name == '/apple') {
            page = const ApplePage();
            transition = Transition.rightToLeft;
          } else {
            page = const Center(child: Text('Página não encontrada!'));
            transition = Transition.fade;
          }

          return GetPageRoute(
            page: () => page,
            transition: transition,
          );
        },
      ),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          currentIndex: currentBottomNavigationIndex.value,
          onTap: (value) {
            debugPrint('value: $value');

            currentBottomNavigationIndex(value);

            switch (value) {
              case 0:
                Get.offNamed('/android', id: 1);
                break;
              case 1:
                Get.offNamed('/apple', id: 1);
                break;
            }
          },
          items: const [
            BottomNavigationBarItem(label: 'Android', icon: Icon(Icons.android)),
            BottomNavigationBarItem(label: 'Apple', icon: Icon(Icons.apple)),
          ],
        );
      }),
    );
  }
}
