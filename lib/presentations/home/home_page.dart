import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          title: Text(
            "Sathwaras",
            style: _themeData.textTheme.headlineLarge,
          ),
        )
      ],
    );
  }
}
