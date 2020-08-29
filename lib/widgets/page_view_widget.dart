import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_widgets/widgets/active_search_text_field.dart';
import 'package:flutter_widgets/widgets/animated_container.dart';
import 'package:flutter_widgets/widgets/opacity_widget.dart';

class PageViewWidget extends StatefulWidget {
  PageViewWidget({Key key}) : super(key: key);

  @override
  _PageViewWidgetState createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  final controller = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: PageView(
      controller: controller,
      scrollDirection: Axis.vertical,
      children: [
        ActiveSearchTextField(),
        OpacityWidget(),
        AnimatedContainerWidget(),
      ],
    ));
  }
}
