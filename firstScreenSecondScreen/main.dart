import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/nature.jpg',
              width: 300,
              height: 300,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondScreen()));
                },
                child: Text('Press Me')),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Second Screen'),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.chat_bubble_outline),
            ),
            Tab(
              icon: Icon(Icons.access_alarm),
            ),
            Tab(
              icon: Icon(Icons.home),
            ),
          ]),
        ),
        body: TabBarView(children: [
          Center(
            child: Text('tab 1'),
          ),
          Center(
            child: Text('tab 2'),
          ),
          Center(
            child: Text('tab 3'),
          ),
        ]),
      ),
    );
  }
}
