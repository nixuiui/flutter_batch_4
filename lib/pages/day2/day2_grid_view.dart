import 'package:flutter/material.dart';

class Day2GridView extends StatefulWidget {
  const Day2GridView({super.key});

  @override
  State<Day2GridView> createState() => _Day2GridViewState();
}

class _Day2GridViewState extends State<Day2GridView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
      ),
      body: ListView(
        children: [
          GridView(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            padding: EdgeInsets.all(8),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 2/3,
              crossAxisCount: 5,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
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