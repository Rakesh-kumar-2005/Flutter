import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Flutter App',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const MyHomePage(),
    );
  }
}

// Convert to StatefulWidget
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// Create a State class for MyHomePage
class _MyHomePageState extends State<MyHomePage> {
  var time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    var colorArray = [
      Colors.amber,
      Colors.black38,
      Colors.blue,
      Colors.deepOrange,
      Colors.green,
      Colors.orange,
      Colors.tealAccent,
      Colors.pink,
      const Color.fromARGB(255, 203, 30, 233),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View'),
        centerTitle: true,
        foregroundColor: const Color.fromARGB(255, 3, 23, 38),
        backgroundColor: const Color.fromARGB(255, 163, 243, 255),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: double.infinity,
          child: GridView.builder(
            itemBuilder: (context, index) {
              return Container(color: colorArray[index % colorArray.length]);
            },
            itemCount: colorArray.length * 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
          ),
        ),
      ),
    );
  }
}
