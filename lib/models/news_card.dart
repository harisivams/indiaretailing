import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final String category;
  final String title;
  final String imagePath;

  const NewsCard({
    Key? key,
    required this.category,
    required this.title,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( child: ListTile(
          leading: Image.asset(imagePath, fit: BoxFit.cover),
          title: Text(category, style: const TextStyle(color: Colors.redAccent,fontSize: 14)),
          subtitle: Text(title,style: const TextStyle(fontSize: 13),),
      
        ),
      
    );
  }
}
