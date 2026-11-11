import 'package:flutter/material.dart';
import 'package:flutter_project/views/widget_tree.dart';

void main() {
  runApp(const MyApp());
}

// stateless
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ), //ColorScheme.fromseed
      ),
      home: WidgetTree(),
    );
  }
}
