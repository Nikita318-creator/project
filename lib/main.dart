import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: Text('it is good1'),
          centerTitle: true,
        ),
        body: Center(child: Icon(Icons.abc_outlined)),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('tap');
          },
          child: Text('tap'),
          backgroundColor: Colors.deepPurple,
        ),
      ),
    );
  }
}
