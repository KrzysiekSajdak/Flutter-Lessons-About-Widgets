import 'package:flutter/material.dart';

class FadeTransitionWidget extends StatefulWidget {
  FadeTransitionWidget({Key key}) : super(key: key);

  @override
  _FadeTransitionWidgetState createState() => _FadeTransitionWidgetState();
}

class _FadeTransitionWidgetState extends State<FadeTransitionWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;
  CurvedAnimation _curvedAnimation;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));
    _curvedAnimation =
        CurvedAnimation(parent: _animationController, curve: Curves.easeInExpo);
    _animation = Tween(begin: 0.0, end: 1.0).animate(_curvedAnimation);
    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed)
        _animationController.reverse();
      else if (status == AnimationStatus.dismissed)
        _animationController.forward();
    });
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Fade Transitin Widget",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        FadeTransition(
          opacity: _animation,
          child: Icon(
            Icons.favorite,
            color: Colors.blue,
            size: 250,
          ),
        ),
        RaisedButton(
          child: Text("Animate"),
          onPressed: () {
            setState(() {
              _animationController.forward();
            });
          },
        )
      ],
    );
  }
}

// floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//       floatingActionButton: FloatingActionButton.extended(
//         backgroundColor: Colors.lightBlue,
//         onPressed: () => setState(() {
//               ///We start the animation by calling this
//               _controller.forward();
//             }),
//         icon: Icon(
//           Icons.movie_filter,
//           color: Colors.white,
//         ),
//         label: Text(
//           "Animate",
//           style: TextStyle(color: Colors.white),
