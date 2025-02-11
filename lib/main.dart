import 'package:flutter/material.dart';
import 'nav_bar.dart';
import 'home.dart';
import 'about.dart';
import 'profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue,
        fontFamily: 'Courier',
      ),
      home: const MainScreen(),
      routes: {
        '/home': (context) => const HomePage(),
        '/about': (context) => const AboutPage(),
        '/contact': (context) => const ContactPage(),
      },
    );
  }
}

// class PageWrapper extends StatelessWidget {
//   final String title;
//   final Widget child;

//   const PageWrapper({required this.title, required this.child, super.key,  required AppBar appBar});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(title)),
//       body: Padding(
//         padding: const EdgeInsets.all(50.0),
//         child: child,
//       ),
//     );
//   }
// }
