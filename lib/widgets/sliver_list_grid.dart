import 'package:flutter/material.dart';

class SliverListGridWidget extends StatefulWidget {
  @override
  _SliverListGridWidgetState createState() => _SliverListGridWidgetState();
}

class _SliverListGridWidgetState extends State<SliverListGridWidget> {
  final colours = [
    Colors.blue,
    Colors.red,
    Colors.black,
    Colors.blue,
    Colors.amber,
    Colors.blueGrey,
    Colors.cyan,
    Colors.indigo
  ];
  var txt = "";

  Widget makeHeader() {
    return Container(
      width: double.infinity,
      height: 40,
      child: Text("Header"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          centerTitle: true,
          expandedHeight: 120,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("App bar"),
          ),
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return GestureDetector(
                child: Container(
                  child: Center(
                    child: Text(
                      txt,
                      style: TextStyle(
                          fontSize: 80,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  color: Colors.grey[100 * (index % 9)],
                  height: 20,
                ),
                onTap: () {
                  setState(() {
                    if (txt == "Mochi Baba") {
                      txt = "Mochi Baba X";
                    } else {
                      txt = "Mochi Baba";
                    }
                  });
                },
              );
            },
            childCount: 20,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return ListTile(
                contentPadding: EdgeInsets.all(10),
                enabled: true,
                title: Text("SliverList Item"),
              );
            },
            childCount: 10,
          ),
        ),
      ],
    );
  }
}
