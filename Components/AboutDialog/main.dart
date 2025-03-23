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
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder:
                    (context) => const AboutDialog(
                      applicationIcon: FlutterLogo(),
                      // applicationLegalese: 'Legalese',
                      applicationName: 'Flutter App',
                      // applicationVersion: 'version 1.0.0',
                      children: [Text("This is the about dialog box...")],
                    ),
              );
            },
            child: Text("Show About Dialog"),
          ),
        ),
      ),
    );
  }
}
