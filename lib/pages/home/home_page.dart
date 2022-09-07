import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/start');
              },
              child: const Text('Página inicial'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/invalid-route');
              },
              child: const Text('Try to navigate to invalid route'),
            ),
          ],
        ),
      ),
    );
  }
}
