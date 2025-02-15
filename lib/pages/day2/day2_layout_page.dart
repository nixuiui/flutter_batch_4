import 'package:flutter/material.dart';

class Day2LayoutPage extends StatefulWidget {
  const Day2LayoutPage({super.key});

  @override
  State<Day2LayoutPage> createState() => _Day2LayoutPageState();
}

class _Day2LayoutPageState extends State<Day2LayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column & Row"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: SafeArea(
          bottom: true,
          child: Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 24,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        width: 200,
                        height: 100,
                        color: Colors.green,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: 200,
                        height: 100,
                        color: Colors.red,
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 100,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
              Divider(height: 1),
              Expanded(
                child: Row(
                  spacing: 16,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 200,
                      height: 50,
                      color: Colors.green,
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        width: 50,
                        height: 50,
                        color: Colors.red,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: 50,
                        height: 50,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}