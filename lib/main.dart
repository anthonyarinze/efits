import 'package:efits/pages/master.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'efits',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Gideon Roman"),
      home: const Master(),
    );
  }
}
