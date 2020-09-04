import 'package:flutter/material.dart';

class MyAncestor extends InheritedWidget {
  final Color colorOne;
  final Color colorTwo;

  const MyAncestor(this.colorOne, this.colorTwo, Widget child)
      : super(child: child);

  @override
  bool updateShouldNotify(MyAncestor oldWidget) {
    return colorOne != oldWidget.colorOne || colorTwo != oldWidget.colorTwo;
  }
}

class ColorTwoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    final ancestor = context.inheritFromWidgetOfExactType(MyAncestor);
    return Container(
      //color: ancestor.colorTwo,
    );
  }
}
