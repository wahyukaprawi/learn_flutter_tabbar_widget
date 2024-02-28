import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Tab> MyTab = [
    Tab(
      text: "UB Official",
    ),
    Tab(
      text: "Prasetya",
    ),
    Tab(
      text: "Selma",
    ),
  ];

@override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DefaultTabController(
      length: MyTab.length,
      child: Scaffold(
          appBar: AppBar(
            title: Text('Learn TabBar Widget'),
            bottom: TabBar(tabs: MyTab),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text('UB Official'),
              ),
              Center(
                  child: Text('Prasetya'),
              ),
              Center(
                child: Text('Selma'),
              ),
            ]
          )
        ),
      ),
    );
  }
}
