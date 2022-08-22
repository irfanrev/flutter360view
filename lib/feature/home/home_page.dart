import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Image View 360'),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            color: Colors.grey[200],
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            'Testing projects',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
