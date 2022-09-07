import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PathParamsPage extends StatelessWidget {
  const PathParamsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PathParamsPage'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          Get.parameters['name'] ?? 'Parâmetro não informado',
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
