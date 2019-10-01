import 'package:flutter/material.dart';

Widget customDisplayContainer({int count}) {
  return Container(
    height: 300,
    width: 300,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      color: count == 0 ? Colors.indigo : count > 0 ? Colors.green : Colors.red,
    ),
    child: Center(
      child: Text(
        count.toString(),
        style: TextStyle(color: Colors.white, fontSize: 50),
      ),
    ),
  );
}
