import 'package:flutter/material.dart';

class TableViewWidget extends StatelessWidget {
  const TableViewWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(50),
        child: Table(
          columnWidths: {
            0: FractionColumnWidth(.3),
            1: FractionColumnWidth(.1),
            2: FractionColumnWidth(.6)
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
          border: TableBorder.all(width: 1, style: BorderStyle.solid),
          children: [
            TableRow(
              children: [
                CustomContainer(
                  colour: Color.fromRGBO(120, 122, 121, 1),
                  label: "label",
                  height: 120,
                ),
                CustomContainer(
                  colour: Color.fromRGBO(10, 122, 121, 1),
                  label: "label",
                  height: 40,
                ),
                CustomContainer(
                  colour: Color.fromRGBO(108, 124, 21, 1),
                  label: "label",
                  height: 80,
                ),
              ],
            ),
            TableRow(
              children: [
                CustomContainer(
                  colour: Color.fromRGBO(120, 122, 121, 1),
                  label: "label",
                  height: 160,
                ),
                CustomContainer(
                  colour: Color.fromRGBO(10, 122, 121, 1),
                  label: "label",
                  height: 80,
                ),
                CustomContainer(
                  colour: Color.fromRGBO(108, 124, 21, 1),
                  label: "label",
                  height: 90,
                ),
              ],
            ),
          ],
        ));
  }
}

class CustomContainer extends StatelessWidget {
  final String label;
  final Color colour;
  final double height;
  const CustomContainer({this.label, this.colour, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: height,
      decoration: BoxDecoration(color: colour),
      child: Text(label),
    );
  }
}
