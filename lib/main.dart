import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:disenos/src/screems/basic_design.dart';
import 'package:disenos/src/screems/home_screem.dart';
import 'package:disenos/src/screems/scroll_design.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Diseños',
      initialRoute: 'home',
      routes: {
        'home': (_) => HomeScreen(),
        'basic_design': (_) => BasicDesignScreen(),
        'scroll_design': (_) => ScrollScreen(),
      },
    );
  }
}
