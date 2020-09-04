import 'package:flutter/material.dart';

class ClipRRectWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: MyContainer(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipOval(
                child: MyContainer(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipPath(
                child: MyContainer(),
              ),
            ),
            ClipRect(
              child: MyContainer(),
            ),
          ],
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        color: Colors.amber,
        child: Icon(
          Icons.group,
          size: 80,
          color: Colors.white,
        ),
      ),
    );
  }
}
