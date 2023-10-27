import 'package:bottombar/bottombar.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomBar(),
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              foregroundColor: Colors.white, backgroundColor: Colors.black)),
    );
  }
}
