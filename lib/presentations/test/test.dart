import 'package:flutter/material.dart';
import 'package:sathwaras/widgets/widgets.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        CustomAppBar(),
      ],
    );
  }
}
