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
      home: ScrollingScreen(),
    );
  }
}

class ScrollingScreen extends StatelessWidget {
  ScrollingScreen({super.key});

  final List<int> numberList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: ListView(
      //   children: <Widget>[
      //     Container(
      //       height: 250,
      //       decoration: BoxDecoration(
      //         color: Colors.grey,
      //         border: Border.all(color: Colors.black),
      //       ),
      //       child: const Center(
      //         child: Text(
      //           '1',
      //           style: TextStyle(fontSize: 50),
      //         ),
      //       ),
      //     ),
      //     Container(
      //       height: 250,
      //       decoration: BoxDecoration(
      //         color: Colors.grey,
      //         border: Border.all(color: Colors.black),
      //       ),
      //       child: const Center(
      //         child: Text(
      //           '2',
      //           style: TextStyle(fontSize: 50),
      //         ),
      //       ),
      //     ),
      //     Container(
      //       height: 250,
      //       decoration: BoxDecoration(
      //         color: Colors.grey,
      //         border: Border.all(color: Colors.black),
      //       ),
      //       child: const Center(
      //         child: Text(
      //           '3',
      //           style: TextStyle(fontSize: 50),
      //         ),
      //       ),
      //     ),
      //     Container(
      //       height: 250,
      //       decoration: BoxDecoration(
      //         color: Colors.grey,
      //         border: Border.all(color: Colors.black),
      //       ),
      //       child: const Center(
      //         child: Text(
      //           '4',
      //           style: TextStyle(fontSize: 50),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),

      // body: ListView(
      //   children: numberList.map((number) {
      //     return Container(
      //       height: 250,
      //       decoration: BoxDecoration(
      //         color: Colors.grey,
      //         border: Border.all(color: Colors.black),
      //       ),
      //       child: Center(
      //         child: Text(
      //           '$number',
      //           style: const TextStyle(fontSize: 50),
      //         ),
      //       ),
      //     );
      //   }).toList(),
      // ),

      // body: ListView.builder(
      //   itemCount: numberList.length,
      //   itemBuilder: (BuildContext context, int index) {
      //     return Container(
      //       height: 250,
      //       decoration: BoxDecoration(
      //         color: Colors.grey,
      //         border: Border.all(color: Colors.black),
      //       ),
      //       child: Center(
      //         child: Text(
      //           '${numberList[index]}',
      //           style: const TextStyle(fontSize: 50),
      //         ),
      //       ),
      //     );
      //   },
      // ),

      body: ListView.separated(
          itemCount: numberList.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(color: Colors.black),
              ),
              child: Center(
                child: Text(
                  '${numberList[index]}',
                  style: const TextStyle(fontSize: 50),
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider();
          }),
    );
  }
}
