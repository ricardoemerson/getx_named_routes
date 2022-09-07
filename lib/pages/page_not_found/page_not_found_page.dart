import 'package:flutter/material.dart';

class PageNotFoundPage extends StatelessWidget {
  const PageNotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageNotFoundPage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PageNotFoundPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
