import 'package:flutter/material.dart';
import 'package:flutter_batch_4/utils/extensions/context_extentions.dart';

class Sample1Page extends StatefulWidget {

  final String title;
  
  const Sample1Page({
    super.key,
    required this.title
  });

  @override
  State<Sample1Page> createState() => _Sample1PageState();
}

class _Sample1PageState extends State<Sample1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () {
                // Navigator.pop(context, {
                //   "name": "Andi"
                // });
                context.pop("Andi");
              }, 
              child: Text("Kembali")
            )
          ],
        )
      ),
    );
  }
}