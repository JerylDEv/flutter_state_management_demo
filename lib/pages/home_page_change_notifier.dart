import 'package:flutter/material.dart';
import 'package:flutter_state_management_demo/bloc/counter_bloc_change_notifier.dart';
import 'package:flutter_state_management_demo/bloc/counter_bloc_vanilla.dart';
import 'package:flutter_state_management_demo/widgets/custom_button.dart';
import 'package:flutter_state_management_demo/widgets/custom_display_container.dart';
import 'package:provider/provider.dart';

class HomePageChangeNotifier extends StatelessWidget {
  HomePageChangeNotifier({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    CounterBlocChangeNotifier _bloc =
        Provider.of<CounterBlocChangeNotifier>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            customDisplayContainer(count: _bloc.counter),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                customButton(
                  onPressed: _bloc.increment,
                  iconData: Icons.add,
                ),
                SizedBox(
                  width: 100,
                ),
                customButton(
                  onPressed: _bloc.decrement,
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
