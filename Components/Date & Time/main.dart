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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
        centerTitle: true,
        foregroundColor: const Color.fromARGB(255, 3, 23, 38),
        backgroundColor: const Color.fromARGB(255, 163, 243, 255),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 400,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Current year : ${time.year}",
                style: TextStyle(fontSize: 19),
              ),
              Text(
                "Current month : ${time.month}",
                style: TextStyle(fontSize: 19),
              ),
              Text("Current day : ${time.day}", style: TextStyle(fontSize: 19)),
              Text(
                "Current Week day : ${time.weekday}",
                style: TextStyle(fontSize: 19),
              ),
              Text(
                "Current hour : ${time.hour}",
                style: TextStyle(fontSize: 19),
              ),
              Text(
                "Current minute : ${time.minute}",
                style: TextStyle(fontSize: 19),
              ),
              Text(
                "Current second : ${time.second}",
                style: TextStyle(fontSize: 19),
              ),
              Text(
                "Current milliSecond : ${time.microsecond}",
                style: TextStyle(fontSize: 19),
              ),
              SizedBox(height: 20),
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    time = DateTime.now();
                  });
                },
                child: Text('Update Time'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
