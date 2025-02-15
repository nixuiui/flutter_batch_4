import 'package:flutter/material.dart';

class Day2GridViewCount extends StatefulWidget {
  const Day2GridViewCount({super.key});

  @override
  State<Day2GridViewCount> createState() => _Day2GridViewCountState();
}

class _Day2GridViewCountState extends State<Day2GridViewCount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
      ),
      body: ListView(
        children: [
          GridView.count(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            padding: EdgeInsets.all(8),
            childAspectRatio: 2/3,
            crossAxisCount: 5,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            children: [
              Container(
                color: Colors.red,
                child: Icon(Icons.home),
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.purple,
              ),
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.brown,
              ),
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.purple,
              ),
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.brown,
              ),
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.purple,
              ),
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.brown,
              ),
            ],
          ),
        ],
      ),
    );
  }
}