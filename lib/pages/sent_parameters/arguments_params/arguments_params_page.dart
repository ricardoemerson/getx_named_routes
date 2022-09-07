import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArgumentsParamsPage extends StatefulWidget {
  const ArgumentsParamsPage({Key? key}) : super(key: key);

  @override
  State<ArgumentsParamsPage> createState() => _ArgumentsParamsPageState();
}

class _ArgumentsParamsPageState extends State<ArgumentsParamsPage> {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> arguments = Get.arguments;

    return Scaffold(
      appBar: AppBar(
        title: const Text('ArgumentsParamsPage'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              arguments['name'] ?? 'Nome não encontrado.',
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              arguments['course'] ?? 'Curso não encontrado.',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
