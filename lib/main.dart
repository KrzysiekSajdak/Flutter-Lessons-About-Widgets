//flutter create --androidx -t app --org com.companyname.packagename -a kotlin -i swift myapp
// FLUTTER LESSONS ABOUT WIDGETS

//bottom navigation bar - https://codewithandrea.com/articles/2018-09-13-bottom-bar-navigation-with-fab/

import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/sliver_app_bar.dart';
import 'package:flutter_widgets/widgets/table_view_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SliverAppBarWidget(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: BottomAppBar(
          notchMargin: 7,
          elevation: 2,
          color: Colors.yellow,
          child: Container(
            height: 25,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//        floatingActionButton: FloatingActionButton(
//          elevation: 2,
//          onPressed: () {},
//          child: Icon(
//            Icons.alarm,
//          ),
//        ),
//        bottomNavigationBar: BottomAppBar(
//          notchMargin: 7,
//          shape: CircularNotchedRectangle(),
//          child: Row(
//            mainAxisSize: MainAxisSize.max,
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//            crossAxisAlignment: CrossAxisAlignment.center,
//            children: [
//              Expanded(
//                child: SizedBox(
//                  height: 48,
//                  width: 48,
//                  child: Material(
//                    type: MaterialType.transparency,
//                    child: InkWell(
//                      onTap: () {},
//                      child: Column(
//                        mainAxisSize: MainAxisSize.min,
//                        mainAxisAlignment: MainAxisAlignment.center,
//                        children: <Widget>[
//                          Icon(Icons.account_circle),
//                          Text("people"),
//                        ],
//                      ),
//                    ),
//                  ),
//                ),
//              ),
//              Expanded(
//                child: SizedBox(
//                  height: 48,
//                  width: 48,
//                  child: Material(
//                    type: MaterialType.transparency,
//                    child: InkWell(
//                      onTap: () {},
//                      child: Column(
//                        mainAxisSize: MainAxisSize.min,
//                        mainAxisAlignment: MainAxisAlignment.center,
//                        children: <Widget>[
//                          Icon(Icons.account_circle),
//                          Text("people"),
//                        ],
//                      ),
//                    ),
//                  ),
//                ),
//              ),
//            ],
//          ),
//        ),
//        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
