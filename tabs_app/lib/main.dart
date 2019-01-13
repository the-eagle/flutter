import 'package:flutter/material.dart';
import './FirstPage.dart' as first;
import './SecondPage.dart' as second;
import './ThirdPage.dart' as third;

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          bottom: TabBar(tabs: <Tab>[
            Tab(text: "Chats"),
            Tab(text: "Status",),
            Tab(text: "Calls",)
          ], controller: controller
          ),
        ),
        body: TabBarView(
            controller: controller,
            children: <Widget>[
              first.Chats(),
              second.Status(),
              third.Calls()
            ]
        ),
      ),
    );
  }
}
