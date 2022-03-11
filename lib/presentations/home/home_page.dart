import 'package:flutter/material.dart';
import 'package:sathwaras/utils/utils.dart';
import 'package:sathwaras/widgets/widgets.dart';

import 'widgets/post_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final ThemeData _themeData = Theme.of(context);
    return CustomScrollView(
      slivers: [
        // SliverAppBar(
        //   title: Text("Sathwaras"),
        // ),
        // const SearchableAppBar(),
        const CustomAppBar(),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 8,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return const PostContainer();
            },
            childCount: 10,
          ),
        ),
      ],
    );
  }
}
