import 'package:flutter/material.dart';

class InstagramStories extends StatelessWidget {
  const InstagramStories(
      {super.key, required this.imagePath, required this.name});

  final String imagePath;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
          decoration: BoxDecoration(
            color: Colors.green,
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            '$imagePath',
          ),
        ),
        Text('$name'),
      ],
    );
  }
}
