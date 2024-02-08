import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'My Awesome app';

    final colors = [
      Colors.lightBlue,
      Colors.red,
      Colors.deepOrange,
      Colors.amber,
      Colors.grey,
      Colors.purple,
      Colors.teal,
      Colors.green,
      Colors.pink,
      Colors.white60
    ];
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
            final colorIndex = index % colors.length;

            return Container(
                width: 80,
                height: 80,
                margin: const EdgeInsets.all(3.0),
                decoration:  BoxDecoration(
                  color: colors[colorIndex],
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ));
          }),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            )/* ,
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),*/
          ],
        ),
      ),
    );
  }
}
