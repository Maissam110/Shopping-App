import 'package:e_comerence_app/utils/app_textstyles.dart';
import 'package:e_comerence_app/view/widegts/category_chips.dart';
import 'package:e_comerence_app/view/widegts/filter_bottom_sheet.dart';
import 'package:e_comerence_app/view/widegts/product_grid.dart';
import 'package:flutter/material.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text(
          "Shopping",
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
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 16), child: CategoryChips()),
          Expanded(child: ProductGrid()),
        ],
      ),
    );
  }
}
