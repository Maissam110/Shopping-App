import 'package:e_comerence_app/utils/app_textstyles.dart';
import 'package:e_comerence_app/view/widegts/filter_bottom_sheet.dart';
import 'package:e_comerence_app/view/widegts/product_grid.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_ios,
            color: isDark ? Colors.white : Colors.black,
          ),
        ),
        title: Text(
          "All Products",
          style: AppTextStyle.withColor(
            AppTextStyle.h3,
            isDark ? Colors.white : Colors.black,
          ),
        ),
        actions: [
          // Search Button
          Icon(Icons.search, color: isDark ? Colors.white : Colors.black),

          //  Filter Button
          IconButton(
            onPressed: () => FilterBottomSheet.show(context),
            icon: Icon(
              Icons.filter_list,
              color: isDark ? Colors.white : Colors.black,
            ),
          ),
        ],
      ),
      body: ProductGrid(),
    );
  }
}
