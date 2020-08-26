import 'package:flutter/material.dart';

class OpacityWidget extends StatefulWidget {
  OpacityWidget({Key key}) : super(key: key);

  @override
  _OpacityWidgetState createState() => _OpacityWidgetState();
}

class _OpacityWidgetState extends State<OpacityWidget> {
  double _currentOpacity = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Opacity(
              opacity: _currentOpacity,
              child: Text(
                "Opacity!!",
                style: TextStyle(fontSize: 50),
              ),
            ),
            AnimatedOpacity(
              duration: Duration(milliseconds: 600),
              opacity: _currentOpacity,
              child: FittedBox(
                child: Text(
                  "Animated Opacity!!",
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ),
            RaisedButton(
              onPressed: () {
                if (_currentOpacity > 0) {
                  setState(() {
                    _currentOpacity -= 0.5;
                  });
                } else if (_currentOpacity == 0.0) {
                  setState(() {
                    _currentOpacity = 1;
                  });
                }
              },
              child: Text("press me"),
            )
          ],
        ),
      ),
    );
  }
}
