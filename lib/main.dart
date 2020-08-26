//flutter create --androidx -t app --org com.companyname.packagename -a kotlin -i swift myapp
// FLUTTER LESSONS ABOUT WIDGETS

import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/future_builder_widget.dart';
import 'package:flutter_widgets/widgets/opacity_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: FutureBuilderWidget(),
        ),
      ),
    );
  }
}
