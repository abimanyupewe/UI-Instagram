import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 85,
          height: 85,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.red,
                Colors.amber,
              ],
            ),
            borderRadius: BorderRadius.circular(120),
          ),
        ),
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            border: Border.all(
              color: Colors.white,
              width: 2,
            ),
            image: DecorationImage(
              image: AssetImage("images/fotoku.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(120),
          ),
        ),
      ],
    );
  }
}
