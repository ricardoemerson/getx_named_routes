import 'package:flutter/material.dart';

class MiddlewaresPage extends StatelessWidget {
  MiddlewaresPage({Key? key}) : super(key: key) {
    debugPrint('Criando a página MiddlewaresPage');
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('Criando o build da página MiddlewaresPage');

    return Scaffold(
      appBar: AppBar(
        title: const Text('MiddlewaresPage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MiddlewaresPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
