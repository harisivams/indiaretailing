import 'package:flutter/material.dart';

class InFocusCard extends StatelessWidget {
  final String imagePath;
  final String headline;

  const InFocusCard({
    Key? key,
    required this.imagePath,
    required this.headline,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagePath, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              headline,
              style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 13),
            ),
          ),
        ],
      ),
    );
  }
}
