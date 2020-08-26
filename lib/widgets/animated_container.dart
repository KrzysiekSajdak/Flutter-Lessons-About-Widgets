import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({Key key}) : super(key: key);

  @override
  _AnimatedContainerWidgetState createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  Color _color = Colors.red;
  double _containerWidth = 0;
  Color _onPressedColour = Colors.green;

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width - 16;
    double progressStep = deviceWidth / 12;
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AnimatedContainer(
                  //alignment: Alignment.bottomRight,
                  duration: Duration(milliseconds: 500),
                  height: 30,
                  width: _containerWidth,
                  decoration: BoxDecoration(
                      color: _color, borderRadius: BorderRadius.circular(0)),
                  child: Center(
                    child: Text(
                      "Hello",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: _onPressedColour,
              child: GestureDetector(
                child: Center(
                  child: FittedBox(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Tap me!",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  setState(() {
                    if (_containerWidth < deviceWidth) {
                      if (_color == Colors.red) {
                        _color = Colors.green;
                      } else {
                        _color = Colors.red;
                      }
                      if (_onPressedColour == Colors.green) {
                        _onPressedColour = Colors.red;
                      } else {
                        _onPressedColour = Colors.green;
                      }
                      _containerWidth += progressStep;
                    }
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
