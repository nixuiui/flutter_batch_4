import 'package:flutter/material.dart';

class Day2GridBuilderPage extends StatefulWidget {
  const Day2GridBuilderPage({super.key});

  @override
  State<Day2GridBuilderPage> createState() => _Day2GridBuilderPageState();
}

class _Day2GridBuilderPageState extends State<Day2GridBuilderPage> {

  late List<Color> colors;

  @override
  void initState() {
    colors = List<Color>.generate(50, (index) {
      return Color((0xFF000000 + (index * 0x0000FD)) % 0xFFFFFFFF);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView.builder()"),
      ),
      body: ListView(
        children: [
          GridView.builder(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            padding: EdgeInsets.all(8),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 2/3,
              crossAxisCount: 5,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            itemCount: colors.length,
            itemBuilder: (context, index) => Container(
              color: colors[index],
              child: Icon(Icons.home),
            ),
          ),
        ],
      ),
    );
  }
}