import 'package:ecell_app/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ECellApp());
}

class ECellApp extends StatelessWidget {
  const ECellApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "E-Cell App",
      home: const HomePage(),
      routes: {HomePage.routeName: (context) => const HomePage()},
      initialRoute: HomePage.routeName,
    );
  }
}
