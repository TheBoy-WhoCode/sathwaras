import 'package:flutter/material.dart';
import 'package:sathwaras/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SearchableAppBar(),
        SliverList(
          delegate: SliverChildListDelegate([
            const SizedBox(
              height: 400,
              child: Center(
                child: Text(
                  'This is an awesome shopping platform',
                ),
              ),
            ),
            Container(
              height: 1000,
              color: Colors.pink,
            ),
          ]),
        ),
      ],
    );
  }
}
