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

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
        centerTitle: true,
        foregroundColor: const Color.fromARGB(255, 3, 23, 38),
        backgroundColor: const Color.fromARGB(255, 163, 243, 255),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300,
                color: Colors.indigoAccent,
                margin: EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    'Column children',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: 300,
                color: const Color.fromARGB(255, 83, 254, 97),
                margin: EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    'Column children',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: 300,
                color: const Color.fromARGB(255, 254, 223, 83),
                margin: EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    'Column children',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 300,
                      width: 200,
                      color: const Color.fromARGB(255, 83, 137, 254),
                      margin: EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          'Row children',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 300,
                      width: 200,
                      color: const Color.fromARGB(255, 254, 83, 237),
                      margin: EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          'Row children',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 300,
                      width: 200,
                      color: const Color.fromARGB(255, 246, 10, 10),
                      margin: EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          'Row children',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 300,
                      width: 200,
                      color: const Color.fromARGB(255, 164, 25, 0),
                      margin: EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          'Row children',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
