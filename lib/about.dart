import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            // Icon(
            //   Icons.tune,
            //   size: 30,
            // ),
            SizedBox(width: 8),
            Text('About'),
          ],
        ),
        titleTextStyle: const TextStyle(
          fontSize: 30,
          fontFamily: 'Courier',
        ),
        toolbarHeight: 75,
      ),
      body: const Center(
        child: Text('This is the About Page'),
      ),
    );
  }
}
