import 'package:flutter/material.dart';
import 'package:sathwaras/widgets/widgets.dart';
import 'widgets/post_header.dart';
import 'widgets/post_caption.dart';
import 'widgets/post_image.dart';
import 'widgets/post_stats.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final ThemeData _themeData = Theme.of(context);
    return CustomScrollView(
      slivers: [
        const SearchableAppBar(),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 8,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 4),
                elevation: 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: const [
                            PostHeader(),
                            SizedBox(
                              height: 6,
                            ),
                            PostCaption(),
                            SizedBox(
                              height: 6,
                            ),
                            PostImage(),
                            SizedBox(
                              height: 6,
                            ),
                            PostStats()
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
            childCount: 10,
          ),
        ),
      ],
    );
  }
}
