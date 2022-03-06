import 'package:flutter/material.dart';
import 'package:sathwaras/presentations/bottomNav/navigation_page.dart';
import 'package:sathwaras/utils/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sathwaras',
      theme: CustomTheme.lightTheme,
      home: NavigationPage(),
    );
  }
}
