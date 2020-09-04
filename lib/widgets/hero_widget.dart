import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Page2();
              },
            ),
          );
        },
        child: Hero(
          tag: "dog",
          child: Container(
            padding: EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset("assets/images/dog.jpeg"),
            ),
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "Fajny piesek",
                    style: TextStyle(fontSize: 50),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Hero(
                    tag: "dog",
                    child: ClipOval(
                      child: Image.asset(
                        "assets/images/dog.jpeg",
                        width: 240,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
