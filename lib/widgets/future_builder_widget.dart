import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FutureBuilderWidget extends StatelessWidget {
  const FutureBuilderWidget({Key key}) : super(key: key);

  final imageUrl =
      "https://www.esa.int/var/esa/storage/images/esa_multimedia/images/2020/07/solar_orbiter_s_first_view_of_the_sun2/22133123-1-eng-GB/Solar_Orbiter_s_first_view_of_the_Sun_pillars.png";

  @override
  Widget build(BuildContext context) {
    return Container(
        child: FutureBuilder(
      future: http.get(imageUrl),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Container(
            child: Text("Loading..."),
          );
        } else if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            print("error");
          }
          return Container(
            width: 200,
            height: 200,
            // color: Colors.amber,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.fitWidth,
              ),
            ),
          );
        } else {
          return CircularProgressIndicator();
        }
      },
    ));
  }
}
