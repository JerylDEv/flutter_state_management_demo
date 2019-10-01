import 'package:flutter/material.dart';

Widget customButton({VoidCallback onPressed, IconData iconData}) {
  return Container(
    height: 100,
    width: 100,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(
        25,
      ),
      color: Colors.indigo,
    ),
    child: RawMaterialButton(
      shape: CircleBorder(),
      onPressed: onPressed,
      child: Icon(
        iconData,
        color: Colors.white,
      ),
    ),
  );
}
