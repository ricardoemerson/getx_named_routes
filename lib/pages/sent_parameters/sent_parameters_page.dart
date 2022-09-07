import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SentParametersPage extends StatelessWidget {
  const SentParametersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SentParametersPage'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed(
                  '/sent-parameters/arguments',
                  arguments: {'name': 'Ricardo Emerson', 'course': 'Jornada GetX'},
                );
              },
              child: const Text('Arguments'),
            ),
            ElevatedButton(
              onPressed: () {
                final param = Uri.encodeFull('Ricardo Emerson');

                Get.toNamed(
                  '/sent-parameters/path-params/$param',
                );
              },
              child: const Text('Path Params'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(
                  '/sent-parameters/query-params?name=Ricardo Emerson&course=Jornada GetX Rotas',
                );
              },
              child: const Text('Query Params sent in URLS'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(
                  '/sent-parameters/query-params',
                  parameters: {'name': 'Ricardo Emerson', 'course': 'Jornada GetX Rotas'},
                );
              },
              child: const Text('Query Params sent with parameters'),
            ),
          ],
        ),
      ),
    );
  }
}
