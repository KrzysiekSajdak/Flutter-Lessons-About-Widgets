import 'package:flutter/material.dart';

// https://www.youtube.com/watch?v=z5iw2SeFx2M&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=4

class WrapWidget extends StatelessWidget {
  const WrapWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      spacing: 20,
      runSpacing: 30,
      children: [
        Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Text("test"),
          width: 120,
          height: 60,
          color: Colors.red,
        ),
        Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Text("test"),
          width: 120,
          height: 40,
          color: Colors.yellow,
        ),
        Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Text("test"),
          width: 120,
          height: 40,
          color: Colors.blue,
        ),
        Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Text("test"),
          width: 120,
          height: 60,
          color: Colors.green,
        ),
        AnimatedContainer(duration: null)
      ],
    );
  }
}
