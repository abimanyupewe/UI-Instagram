import 'package:flutter/material.dart';

class StoryItems extends StatelessWidget {
  StoryItems(
    this.title,
  );

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(60),
                ),
              ),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                  image: DecorationImage(
                    image: NetworkImage("https://picsum.photos/536/354"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(60),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(title),
        ],
      ),
    );
  }
}
