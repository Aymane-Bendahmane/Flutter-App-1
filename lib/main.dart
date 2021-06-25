import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfirstapp/AppPages/Animals.dart';

import 'AppPages/Home.dart';
import 'AppPages/Counter.dart';
import 'Components/DrawerItem.dart';

void main() => runApp(homeApp());

class homeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        routes: {
          //'/':(context) => homeApp(),
          '/counter': (context) => Counter(),
          '/Animals': (context) => Animals()
        }, //probleme ici
        home: Home()));
  }
}
