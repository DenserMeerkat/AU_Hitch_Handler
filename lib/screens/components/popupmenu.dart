// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import '../../constants.dart';

class PopupMenu extends StatelessWidget {
  const PopupMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        splashRadius: 25.0,
        offset: Offset(-10, 10),
        position: PopupMenuPosition.over,
        icon: Icon(
          Icons.more_vert,
          color: kTextColor.withOpacity(0.6),
        ),
        color: kGrey30,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        itemBuilder: (context) {
          return [
            PopupMenuItem<int>(
              value: 0,
              child: Text("Support"),
            ),
            PopupMenuItem<int>(
              value: 1,
              child: Text("Info"),
            ),
          ];
        },
        onSelected: (value) {
          if (value == 0) {
            () => {}; //Todo
          } else if (value == 1) {
            () => {}; //Todo
          }
        });
  }
}
