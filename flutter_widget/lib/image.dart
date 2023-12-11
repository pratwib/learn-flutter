import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Oswald',
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
      body: Center(
        child: Column(
          children: <Widget>[
            Image.network(
              'https://picsum.photos/200/300',
              width: 200,
              height: 200,
            ),
            Image.asset(
              'images/android.png',
              width: 200,
              height: 200,
            ),
            const Text(
              'Custom Font',
              style: TextStyle(
                fontFamily: 'Oswald',
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
