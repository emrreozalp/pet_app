import 'package:flutter/material.dart';
import 'package:pet_app/items/project_paddings.dart';

class InfoCards extends StatelessWidget {
  const InfoCards(
      {super.key,
      required this.color,
      required this.title,
      required this.subtitle});

  final Color color;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 50,
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Padding(
            padding: cardTextsPadding,
            child: Text(
              subtitle,
            ),
          ),
        ],
      ),
    );
  }
}
