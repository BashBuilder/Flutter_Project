import 'package:flutter/material.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
          centerTitle: true,
          backgroundColor: Colors.teal,
          // actions: [
          //   // Text("Perform something"),
          //   Icon(Icons.login),
          // ],
        ),

        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
          ],
          onDestinationSelected: (value) => print(value),
          selectedIndex: 0,
        ),
      ),
    );
  }
}
