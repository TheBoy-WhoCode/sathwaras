import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 0,
      floating: true,
      pinned: true,
      snap: false,
      title: const Text("Sathwaras"),
      bottom: AppBar(
        elevation: 0,
        title: const DefaultTabController(
          length: 5,
          child: TabBar(
            indicatorColor: Colors.white,
            isScrollable: true,
            tabs: [
              Tab(
                text: 'Trending',
              ),
              Tab(
                text: 'Sports',
              ),
              Tab(
                text: 'Economy',
              ),
              Tab(
                text: 'Fashion',
              ),
              Tab(
                text: 'Entertainment',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
