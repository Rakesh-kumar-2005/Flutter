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
        title: const Text(
          'Flutter App',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 209, 252, 255),
        foregroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: Center(
        child: Text(
          "Hello Flutter...",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: const NavigationDrawer(),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[buildHeader(context), buildMenuItems(context)],
      ),
    ),
  );

  Widget buildHeader(BuildContext context) => Container(
    padding: EdgeInsets.all(20),
    color: const Color.fromARGB(255, 209, 252, 255),
    child: Column(
      children: const [
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(color: Colors.transparent),
          accountName: Text(
            "Rakesh Kumar Mohanty",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          accountEmail: Text(
            "mohantyrakesh802@gmail.com",
            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
          ),
          currentAccountPictureSize: Size.square(70),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.black,
            child: Text(
              "R",
              style: TextStyle(
                fontSize: 30.0,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
        ),
      ],
    ),
  );
  Widget buildMenuItems(BuildContext context) => Column(
    children: [
      ListTile(
        leading: Icon(Icons.home),
        title: Text("Home"),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(Icons.call),
        title: Text("Contact Us"),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(Icons.production_quantity_limits),
        title: Text("Products"),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      Divider(height: 20, thickness: 4),
      ListTile(
        leading: Icon(Icons.workspaces_rounded),
        title: Text("Work Flow"),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(Icons.favorite),
        title: Text("Favorite"),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    ],
  );
}
