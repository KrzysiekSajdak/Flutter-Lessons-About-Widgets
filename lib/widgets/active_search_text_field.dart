import 'package:flutter/material.dart';

class ActiveSearchTextField extends StatefulWidget {
  ActiveSearchTextField({Key key}) : super(key: key);

  @override
  _ActiveSearchTextFieldState createState() => _ActiveSearchTextFieldState();
}

class _ActiveSearchTextFieldState extends State<ActiveSearchTextField> {
  bool searchFieldVisible = false;
  Color searchIconColour = Colors.blue;
  double searchFieldVisibleSize = 0;
  double searchBarTextOpacity = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 380,
          height: 60,
          child: Stack(
            children: [
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  AnimatedContainer(
                    alignment: Alignment.centerRight,
                    duration: Duration(milliseconds: 500),
                    width: searchFieldVisibleSize,
                    height: 54,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(45),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: AnimatedOpacity(
                        duration: Duration(milliseconds: 800),
                        opacity: searchBarTextOpacity,
                        child: Text(
                          "search for item...",
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.grey.shade400,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (searchFieldVisible) {
                        searchFieldVisible = false;
                        searchFieldVisibleSize = 0;
                        searchBarTextOpacity = 0;
                      } else {
                        searchFieldVisible = true;
                        searchFieldVisibleSize = 380;
                        searchBarTextOpacity = 1;
                      }
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    width: 60,
                    height: searchFieldVisible ? 40 : 60,
                    decoration: BoxDecoration(
                      color: searchIconColour,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: searchFieldVisible ? 28 : 35,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
