import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sathwaras/controllers/controllers.dart';
import 'package:sathwaras/utils/utils.dart';

class NavigationPage extends StatelessWidget {
  NavigationPage({Key? key}) : super(key: key);

  final List<Widget> _screens = [
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
  ];

  final Map<String, IconData> _icons = const {
    "Home": Icons.home_outlined,
    "Search": Icons.search_outlined,
    "Post": Icons.add_box_outlined,
    "Downloads": Icons.shop_outlined,
    "More": Icons.menu
  };

  final NavigationController navigationController =
      Get.put<NavigationController>(NavigationController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: _screens[navigationController.currentIndex.value],
        bottomNavigationBar: Stack(
          children: [
            BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: _icons
                  .map(
                    (title, icon) => MapEntry(
                      title,
                      BottomNavigationBarItem(
                        icon: Icon(
                          icon,
                          size: 30,
                          color: ColorPalette.primaryColor,
                        ),
                        label: title,
                      ),
                    ),
                  )
                  .values
                  .toList(),
              currentIndex: navigationController.currentIndex.value,
              onTap: (index) => navigationController.setCurrentIndex(index),
            )
          ],
        ),
      ),
    );
  }
}
