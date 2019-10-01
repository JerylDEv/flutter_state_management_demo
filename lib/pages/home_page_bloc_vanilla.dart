import 'package:flutter/material.dart';
import 'package:flutter_state_management_demo/bloc/counter_bloc_vanilla.dart';
import 'package:flutter_state_management_demo/bloc/counter_bloc_vanilla_provider.dart';
import 'package:flutter_state_management_demo/widgets/custom_button.dart';
import 'package:flutter_state_management_demo/widgets/custom_display_container.dart';

class HomePageBlocVanilla extends StatefulWidget {
  HomePageBlocVanilla({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageBlocVanillaState createState() => _HomePageBlocVanillaState();
}

class _HomePageBlocVanillaState extends State<HomePageBlocVanilla> {
  /// We could expose the bloc by instantiating it.
  /// However, in real world applications, we use Inherited Widget
  /// to pass the Data across multiple pages and widgets
  /// There is a caveat though, we still need to instantiate the bloc
  /// when using inherited widget for disposing purposes.
  /// the reason to this is that inherited widget
  /// was meant for sharing data, not to handle data
  final _bloc = CounterBloc();

//  void didChangeDependencies(){
//    super.didChangeDependencies();
//    var bloc = CounterBlocVanillaProvider.of(context).bloc;
//  }

  @override
  void dispose() {
    super.dispose();

    /// We are using a Stateful widget because we still need
    /// to dispose the _bloc when it is not used
    _bloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var bloc = CounterBlocVanillaProvider.of(context).bloc;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            StreamBuilder(
//              stream: _bloc.counter,
              stream: bloc.counter,
              initialData: 0,
              builder: (context, snapshot) {
                return customDisplayContainer(count: snapshot.data);
              },
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                customButton(
//                  onPressed: _bloc.increment,
                  onPressed: bloc.increment,
                  iconData: Icons.add,
                ),
                SizedBox(
                  width: 100,
                ),
                customButton(
//                  onPressed: _bloc.decrement,
                  onPressed: bloc.decrement,
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
