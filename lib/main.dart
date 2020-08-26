//flutter create --androidx -t app --org com.companyname.packagename -a kotlin -i swift myapp
// FLUTTER LESSONS ABOUT WIDGETS

import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/animated_container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: AnimatedContainerWidget(),
        ),
      ),
    );
  }
}
