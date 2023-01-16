import 'package:flutter/material.dart';
import 'package:flutter_testing_tutorial/screens/my_home_page.dart';
import 'package:honey/honey.dart';

const kIsHoney = bool.fromEnvironment('HONEY');

void main() {
  if (kIsHoney) {
    HoneyWidgetsBinding.ensureInitialized();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}
