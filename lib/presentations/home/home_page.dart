import 'package:flutter/material.dart';
// import 'package:sathwaras/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverAppBar(
          title: const Text("Sathwaras"),
        ),
      ],
    );
  }
}
