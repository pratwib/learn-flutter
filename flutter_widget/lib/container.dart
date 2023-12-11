import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.rectangle,
          border: Border.all(color: Colors.green, width: 3),
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              offset: Offset(3, 6),
              blurRadius: 10,
            )
          ],
        ),
        // color: Colors.blue,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(10),
        width: 200,
        height: 100,
        child: const Text(
          'Hi',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
