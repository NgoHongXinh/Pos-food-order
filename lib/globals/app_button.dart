import 'package:flutter/material.dart';
import 'package:food_order_pos/globals/app_colors.dart';
import 'package:food_order_pos/globals/app_font_style.dart';

class AppButton {
  static MaterialButton buildMaterialButton({
    required String buttonName,
    required VoidCallback onTap,
  }) {
    return MaterialButton(
      onPressed: onTap,
      color: AppColors.themeColor,
      splashColor: AppColors.lawGreen,
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      hoverColor: AppColors.aqua,
      elevation: 7,
      height: 46,
      minWidth: 130,
      focusElevation: 12,
      child: Text(
        buttonName,
        style:
            AppTextStyle.headerInfoTextStyle(fontSize: 18, color: Colors.black),
      ),
    );
  }
}
