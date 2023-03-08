import 'package:flutter/material.dart';

class ThreeItemsTable extends StatelessWidget {
  final List<Widget> items;
  final double itemHeight;
  final double itemWidth;
  final double spacing;

  ThreeItemsTable({
    required this.items,
    this.itemHeight = 240,
    this.itemWidth = 180,
    this.spacing = 25,
  });

  @override
  Widget build(BuildContext context) {
    int itemCount = items.length;
    int rowCount = (itemCount / 3).ceil();

    return Table(
      children: List.generate(rowCount, (row) {
        int startIndex = row * 3;
        int endIndex = (startIndex + 3 > itemCount) ? itemCount : startIndex + 3;
        List<Widget> rowItems = items.sublist(startIndex, endIndex);
        return TableRow(
          children: List.generate(rowItems.length, (col) {
            return Padding(
              padding: EdgeInsets.all(spacing / 2),
              child: SizedBox(
                height: itemHeight,
                width: itemWidth,
                child: rowItems[col],
              ),
            );
          }),
        );
      }),
    );
  }
}
