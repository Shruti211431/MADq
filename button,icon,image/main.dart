import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Experiment 1'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    print('Button pressed');
                  },
                  child: Text('Press Me')),
              SizedBox(
                height: 70,
              ),
              Icon(
                Icons.favorite,
                size: 50,
                color: Colors.greenAccent,
              ),
              SizedBox(
                height: 70,
              ),
              Image.network(
                'data:image/jpeg;base64,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',
                height: 150,
                width: 150,
              ),
              Image.asset(
                'assets/nature.jpg',
                width: 150,
                height: 150,
              )
            ],
          ),
        ),
      ),
    );
  }
}
