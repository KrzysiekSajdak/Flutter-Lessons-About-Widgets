import 'package:flutter/material.dart';

class FadeInImageWidget extends StatelessWidget {
  const FadeInImageWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FadeInImage.assetNetwork(
          fadeInCurve: Curves.easeInCirc,
            alignment: Alignment.center,
            width: 250,
            fadeInDuration: Duration(seconds: 2),
            placeholder: "assets/images/wait.png",
            image:
                "https://store-images.s-microsoft.com/image/apps.62967.9007199266308961.83dac001-187f-46a5-a803-bb2d903f72c0.97e7f0bc-27ea-4e72-bdd7-5a27a827bd19?mode=scale&q=90&h=200&w=200&background=%23c8312b"),
      ),
    );
  }
}
