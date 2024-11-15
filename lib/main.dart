import 'package:flutter/material.dart';
import 'package:sizedbox_widget_example/di/service_locator.dart';
import 'package:sizedbox_widget_example/screens/sizedbox_screen.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SizedBoxScreen(),
    );
  }
}
