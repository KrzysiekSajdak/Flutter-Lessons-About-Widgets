import 'package:flutter/material.dart';

class ActiveSearchTextField extends StatefulWidget {
  ActiveSearchTextField({Key key}) : super(key: key);

  @override
  _ActiveSearchTextFieldState createState() => _ActiveSearchTextFieldState();
}

class _ActiveSearchTextFieldState extends State<ActiveSearchTextField> {
  bool searchFieldVisible = false;

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
              searchFieldVisible
                  ? Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 380,
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
                            child: Text(
                              "search for item...",
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  color: Colors.grey.shade400,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    )
                  : Container(),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (searchFieldVisible) {
                        searchFieldVisible = false;
                      } else {
                        searchFieldVisible = true;
                      }
                    });
                  },
                  child: Container(
                    width: 60,
                    height: searchFieldVisible ? 40 : 60,
                    child: CircleAvatar(
                      backgroundColor: Colors.orange.shade500,
                      radius: 45,
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: searchFieldVisible ? 28 : 35,
                      ),
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
