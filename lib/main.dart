import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'My Awesome app';
    /*
    final colors = [
      Colors.lightBlue,
      Colors.red,
      Colors.lightBlue,
      Colors.red,
      Colors.lightBlue,
      Colors.red,
      Colors.lightBlue,
      Colors.red,
      Colors.lightBlue,
      Colors.red
    ];*/
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        appBar: AppBar(title: const Text(title), actions: [
          IconButton(icon: Icon(Icons.settings), onPressed: () {})
        ]),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(10, (index) {
            //final colorIndex = index % colors.length;

            return Container(
                width: 80,
                height: 80,
                margin: const EdgeInsets.all(5.0),
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ));
          }),
        ),
      ),
    );
  }
}
