import 'package:flutter/material.dart';

class Day2ListViewPage extends StatefulWidget {
  const Day2ListViewPage({super.key});

  @override
  State<Day2ListViewPage> createState() => _Day2ListViewPageState();
}

class _Day2ListViewPageState extends State<Day2ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: ListView(
        padding: EdgeInsets.all(40),
        children: [
          ListView(
            padding: EdgeInsets.zero,
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
            children: [
              Container(
                height: 50,
                color: Colors.green,
              ),
              Container(
                height: 50,
                color: Colors.yellow,
              ),
              Container(
                height: 50,
                color: Colors.brown,
              ),
            ],
          ),
          SizedBox(
            height: 50,
            child: ListView(
              padding: EdgeInsets.zero,
              physics: ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                Container(
                  width: 50,
                  color: Colors.green,
                ),
                Container(
                  width: 50,
                  color: Colors.yellow,
                ),
                Container(
                  width: 100,
                  color: Colors.brown,
                ),
                Container(
                  width: 50,
                  color: Colors.green,
                ),
                Container(
                  width: 50,
                  color: Colors.yellow,
                ),
                Container(
                  width: 100,
                  color: Colors.brown,
                ),
                Container(
                  width: 50,
                  color: Colors.green,
                ),
                Container(
                  width: 50,
                  color: Colors.yellow,
                ),
                Container(
                  width: 100,
                  color: Colors.brown,
                ),
                Container(
                  width: 50,
                  color: Colors.green,
                ),
                Container(
                  width: 50,
                  color: Colors.yellow,
                ),
                Container(
                  width: 100,
                  color: Colors.brown,
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            color: Colors.red,
          ),
          Container(
            height: 300,
            color: Colors.blue,
          ),
          Container(
            height: 50,
            color: Colors.green,
          ),
          Container(
            height: 200,
            color: Colors.red,
          ),
          Container(
            height: 300,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}