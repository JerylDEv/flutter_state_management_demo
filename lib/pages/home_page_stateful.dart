import 'package:flutter/material.dart';
import 'package:flutter_state_management_demo/widgets/custom_button.dart';
import 'package:flutter_state_management_demo/widgets/custom_display_container.dart';

class HomePageStateful extends StatefulWidget {
  HomePageStateful({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageStatefulState createState() => _HomePageStatefulState();
}

class _HomePageStatefulState extends State<HomePageStateful> {
  // State Management Code Start //

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  // State Management Code End //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            customDisplayContainer(count: _counter),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                customButton(
                  onPressed: _incrementCounter,
                  iconData: Icons.add,
                ),
                SizedBox(
                  width: 100,
                ),
                customButton(
                  onPressed: _decrementCounter,
                  iconData: Icons.remove,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
