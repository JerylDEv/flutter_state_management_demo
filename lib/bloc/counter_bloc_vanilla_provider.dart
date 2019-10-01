import 'package:flutter/material.dart';
import 'package:flutter_state_management_demo/bloc/counter_bloc_vanilla.dart';

class CounterBlocVanillaProvider extends InheritedWidget {
  CounterBlocVanillaProvider({Key key, Widget child, this.bloc})
      : super(key: key, child: child);

  final CounterBloc bloc;

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static CounterBlocVanillaProvider of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(CounterBlocVanillaProvider)
        as CounterBlocVanillaProvider);
  }
}
