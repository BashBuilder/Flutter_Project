import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
      ),
      home: const MyHomePage(title: 'Home page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       backgroundColor: Theme.of(context).colorScheme.inversePrimary,
  //       title: Text(widget.title),
  //     ),
  //     body: Center(
  //       child: Container(
  //         color: Colors.amber,
  //         child: Row(
  //           // crossAxisAlignment: CrossAxisAlignment.start,
  //           // mainAxisAlignment: MainAxisAlignment.end,
  //           // mainAxisSize: MainAxisSize.min,
  //           children: [
  //             Container(
  //               width: 100,
  //               height: 100,
  //               padding: EdgeInsets.all(10),
  //               decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(25),
  //                 color: Colors.red,
  //               ),
  //               child: Center(
  //                 child: Text(
  //                   "Joy to the world",
  //                   style: TextStyle(color: Colors.amber),
  //                 ),
  //               ),
  //             ),
  //             Container(
  //               width: 100,
  //               height: 100,
  //               padding: EdgeInsets.all(10),
  //               decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(25),
  //                 color: Colors.red,
  //               ),
  //               child: Text(
  //                 "hello to the world",
  //                 style: TextStyle(color: Colors.amber),
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //     floatingActionButton: FloatingActionButton(
  //       onPressed: _incrementCounter,
  //       tooltip: 'Increment',
  //       child: const Icon(Icons.add),
  //     ),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Image.asset(
        "assets/images/images.jpg",
        // height: double.infinity,
        // fit: BoxFit.cover,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
