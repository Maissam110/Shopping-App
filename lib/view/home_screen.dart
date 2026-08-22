import 'package:e_comerence_app/controllers/theme_controller.dart';
import 'package:e_comerence_app/features/notification/view/notifications_screen.dart';
import 'package:e_comerence_app/view/all_products_screen.dart';
import 'package:e_comerence_app/view/cart_screen.dart';
import 'package:e_comerence_app/view/widegts/category_chips.dart';
import 'package:e_comerence_app/view/widegts/custom_search_bar.dart';
import 'package:e_comerence_app/view/widegts/product_grid.dart';
import 'package:e_comerence_app/view/widegts/scale_banner.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            //  Header
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/images/avatar.jpg'),
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello Buddy",
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                      Text(
                        "Good Morning",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  // Notification Icon
                  IconButton(
                    onPressed: () => Get.to(() => NotificationsScreen()),
                    icon: Icon(Icons.notifications_outlined),
                  ),

                  // Cart Button
                  IconButton(
                    onPressed: () => Get.to(() => CartScreen()),
                    icon: Icon(Icons.shopping_cart_outlined),
                  ),
                  // Theme Button
                  GetBuilder<ThemeController>(
                    builder: (controller) => IconButton(
                      onPressed: () => controller.toggleTheme(),
                      icon: Icon(
                        controller.isDarkMode
                            ? Icons.light_mode
                            : Icons.dark_mode,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Search Bar
            CustomSearchBar(),
            // Chips Cetagory
            CategoryChips(),
            // Scale Banner
            ScaleBanner(),
            // Popular Products Section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Products",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () => Get.to(() => AllProductsScreen()),
                    child: Text(
                      "See All",
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                  ),
                ],
              ),
            ),

            //Product Grid
            Expanded(child: ProductGrid()),
          ],
        ),
      ),
    );
  }
}
