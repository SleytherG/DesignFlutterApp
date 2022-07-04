import 'package:flutter/material.dart';

import 'package:disenos/screens/basicDesign.dart';
import 'package:disenos/screens/scrollDesign.dart';
import 'package:disenos/screens/homeScreen.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_screen',
      theme: ThemeData.dark(),
      routes: {
        'basic_design'  : ( BuildContext context ) => BasicDesignScreen(),
        'scroll_design' : ( BuildContext context ) => ScrollScreen(),
        'home_screen'   : ( BuildContext context ) => HomeScreen()
      }
    );
  }
}

