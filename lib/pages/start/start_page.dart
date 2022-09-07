import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StartPage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'StartPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
