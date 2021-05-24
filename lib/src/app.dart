import 'package:flutter/material.dart';
import 'package:scg_portal_flutter/src/pages/home/home_page.dart';
import 'package:scg_portal_flutter/src/config/theme.dart' as custom_theme;

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //primarySwatch: custom_theme.Theme.primarySwatch,
        //blue[700]
        primaryColor: custom_theme.Theme.primaryColor,
        
      ),
      home: HomePage(title: 'SCG Portal'),
    );
  }
}