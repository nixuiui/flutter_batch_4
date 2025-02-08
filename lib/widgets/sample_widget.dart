import 'package:flutter/material.dart';

class SampleWidget extends StatelessWidget {
  
  final String name;
  final int day;
  final Function()? onTap;
  
  const SampleWidget({
    super.key,
    required this.name,
    required this.day,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap?.call(),
      onDoubleTap: () {
        print("Double Tap");
      },
      onLongPress: () {
        print("On Long Press");
      },
      child: Column(
        children: [
          Text(
            "Helloo, $name",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
          ),
          Text(
            "Ini hari ke-$day Bootcamp",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }
}