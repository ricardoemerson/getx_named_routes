import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QueryParamsPage extends StatelessWidget {
  const QueryParamsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QueryParamsPage'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Get.parameters['name'] ?? 'Nome não encontrado.',
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              Get.parameters['course'] ?? 'Curso não encontrado.',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
