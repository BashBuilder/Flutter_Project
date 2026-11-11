import 'package:flutter/material.dart';
import 'package:flutter_project/data/notifiers.dart';
import 'package:flutter_project/views/widget_tree.dart';

void main() {
  runApp(const MyApp());
}

// stateless
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDarkMode, value) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: .fromSeed(
              seedColor: Colors.teal,
              brightness: isDarkMode ? Brightness.dark : Brightness.light,
            ), //ColorScheme.fromseed
          ),
          home: WidgetTree(),
        );
      },
    );
  }
}
