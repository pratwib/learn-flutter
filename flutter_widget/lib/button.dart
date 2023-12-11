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

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String? language;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Column(
        children: <Widget>[
          ElevatedButton(
            child: const Text('Tombol'),
            onPressed: () {},
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Text Button'),
          ),
          OutlinedButton(
            child: const Text('Outlined Button'),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.volume_up),
            tooltip: 'Increase volume by 10',
            onPressed: () {},
          ),
          DropdownButton<String>(
            items: const <DropdownMenuItem<String>>[
              DropdownMenuItem<String>(
                value: 'Dart',
                child: Text('Dart'),
              ),
              DropdownMenuItem<String>(
                value: 'Kotlin',
                child: Text('Kotlin'),
              ),
              DropdownMenuItem<String>(
                value: 'Swift',
                child: Text('Swift'),
              ),
            ],
            value: language,
            hint: const Text('Select Language'),
            onChanged: (String? value) {
              setState(
                () {
                  language = value;
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
