import 'package:flutter/material.dart';

class SliverAppBarWidget extends StatelessWidget {
  const SliverAppBarWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScroller) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 140,
              floating: false,
              pinned: true,
              elevation: 25,
              centerTitle: false,
              backgroundColor: Colors.black,
              flexibleSpace: const FlexibleSpaceBar(
                title: Text(
                  "Available seats",
                  textAlign: TextAlign.left,
                ),
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.add_box),
                  onPressed: () {},
                  tooltip: "Add new entry",
                )
              ],
            ),
          ];
        },
        body: Center(child: Text("as")),
      ),
    );
  }
}
