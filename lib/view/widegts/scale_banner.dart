import 'package:e_comerence_app/utils/app_textstyles.dart';
import 'package:flutter/material.dart';

class ScaleBanner extends StatelessWidget {
  const ScaleBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Get Your",
                  style: AppTextStyle.withColor(AppTextStyle.h3, Colors.white),
                ),
                Text(
                  "Special Sale",
                  style: AppTextStyle.withColor(
                    AppTextStyle.withWeight(AppTextStyle.h2, FontWeight.bold),
                    Colors.white,
                  ),
                ),
                Text(
                  "Up to 40%",
                  style: AppTextStyle.withColor(AppTextStyle.h3, Colors.white),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Shop Now", style: AppTextStyle.buttonMedium),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            ),
          ),
        ],
      ),
    );
  }
}
