import 'package:flutter/material.dart';
import 'package:flutter_state_management_demo/bloc/counter_bloc_change_notifier.dart';
import 'package:flutter_state_management_demo/bloc/counter_bloc_vanilla.dart';
import 'package:flutter_state_management_demo/bloc/counter_bloc_vanilla_provider.dart';
import 'package:flutter_state_management_demo/pages/home_page_bloc_vanilla.dart';
import 'package:flutter_state_management_demo/pages/home_page_bloc_vanilla_with_provider.dart';
import 'package:flutter_state_management_demo/pages/home_page_change_notifier.dart';
import 'package:flutter_state_management_demo/pages/home_page_stateful.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      title: 'Tag o\' Num',
//      theme: ThemeData(
//        primarySwatch: Colors.indigo,
//      ),
//
////      home: HomePageStateful(title: 'Tag o\' Num'),
//      home: HomePageBlocVanilla(title: 'Tag o\' Num'),
//    );

//    return CounterBlocVanillaProvider(
//      bloc: CounterBloc(),
//      child: MaterialApp(
//        debugShowCheckedModeBanner: false,
//        title: 'Tag o\' Num',
//        theme: ThemeData(
//          primarySwatch: Colors.indigo,
//        ),
//        home: HomePageBlocVanilla(title: 'Tag o\' Num'),
//      ),
//    );

//    return Provider(
//      builder: (context) => CounterBloc(),
//      dispose: (context, value) => value.dispose(),
//      child: MaterialApp(
//        debugShowCheckedModeBanner: false,
//        title: 'Tag o\' Num',
//        theme: ThemeData(
//          primarySwatch: Colors.indigo,
//        ),
//        home: HomePageBlocProvider(title: 'Tag o\' Num'),
//      ),
//    );

//    return MultiProvider(
//      providers: [
//        Provider(
//          builder: (context) => CounterBloc(),
//          dispose: (context, value) => value.dispose(),
//        ),
//      ],
//      child: MaterialApp(
//        debugShowCheckedModeBanner: false,
//        title: 'Tag o\' Num',
//        theme: ThemeData(
//          primarySwatch: Colors.indigo,
//        ),
//        home: HomePageBlocProvider(title: 'Tag o\' Num'),
//      ),
//    );

    return ChangeNotifierProvider<CounterBlocChangeNotifier>.value(
      value: CounterBlocChangeNotifier(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Tag o\' Num',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: HomePageChangeNotifier(title: 'Tag o\' Num'),
      ),
    );
  }
}
