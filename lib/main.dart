import 'package:animation/animated_container.dart';
import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: AppBar(
          title: Text("Animation"),
          
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              AnimatedContainerWidget(),
            ],
          ),
        ),
      ),
    );
  }
}