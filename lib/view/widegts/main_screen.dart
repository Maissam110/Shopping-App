import 'package:e_comerence_app/controllers/navigation_controller.dart';
import 'package:e_comerence_app/controllers/theme_controller.dart';
import 'package:e_comerence_app/view/account_screen.dart';
import 'package:e_comerence_app/view/home_screen.dart';
import 'package:e_comerence_app/view/shopping_screen.dart';
import 'package:e_comerence_app/view/widegts/custom_bottom_navbar.dart';
import 'package:e_comerence_app/view/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigationController navigationController = Get.put(
      NavigationController(),
    );
    return GetBuilder<ThemeController>(
      builder: (themeController) => Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: AnimatedSwitcher(
          duration: Duration(milliseconds: 200),
          child: Obx(
            () => IndexedStack(
              key: ValueKey(navigationController.currentIndex.value),
              index: navigationController.currentIndex.value,
              children: [
                HomeScreen(),
                ShoppingScreen(),
                WishlistScreen(),
                AccountScreen(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomNavbar(),
      ),
    );
  }
}
