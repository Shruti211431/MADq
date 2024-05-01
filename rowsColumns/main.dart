import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Row and Column Example',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Row and Column Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Row with Image and Button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Image
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Image.network(
                    'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f4bd7a6-f763-4518-9b81-bdfd40ce3fc9/d26yf2h-e858f532-4b44-4584-a255-fdedf789cb0b.png/v1/fill/w_150,h_150,q_80,strp/spongebob_7_150x150_png_by_somemilk_d26yf2h-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTUwIiwicGF0aCI6IlwvZlwvNWY0YmQ3YTYtZjc2My00NTE4LTliODEtYmRmZDQwY2UzZmM5XC9kMjZ5ZjJoLWU4NThmNTMyLTRiNDQtNDU4NC1hMjU1LWZkZWRmNzg5Y2IwYi5wbmciLCJ3aWR0aCI6Ijw9MTUwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.9Cj68fOL4LH8bZpbuOUVWFVyJvhoaApXpk7O-FsgB1w',
                    width: 150,
                    height: 150,
                  ),
                ),
                //Button
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your button functionality here
                      print('Button pressed!');
                    },
                    child: Text('Click me'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 32.0),
            //Column with Image and Button
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Image
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Image.network(
                    'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f4bd7a6-f763-4518-9b81-bdfd40ce3fc9/d26yf2h-e858f532-4b44-4584-a255-fdedf789cb0b.png/v1/fill/w_150,h_150,q_80,strp/spongebob_7_150x150_png_by_somemilk_d26yf2h-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTUwIiwicGF0aCI6IlwvZlwvNWY0YmQ3YTYtZjc2My00NTE4LTliODEtYmRmZDQwY2UzZmM5XC9kMjZ5ZjJoLWU4NThmNTMyLTRiNDQtNDU4NC1hMjU1LWZkZWRmNzg5Y2IwYi5wbmciLCJ3aWR0aCI6Ijw9MTUwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.9Cj68fOL4LH8bZpbuOUVWFVyJvhoaApXpk7O-FsgB1w',
                    width: 150,
                    height: 150,
                  ),
                ),
                //Button
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your button functionality here
                      print('Button pressed!');
                    },
                    child: Text('Click me'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
