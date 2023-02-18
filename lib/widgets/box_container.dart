import 'package:flutter/material.dart';
import 'package:purchase_vendor/utils/app_colors.dart';

Widget buildShadowContainer({
  required Widget child,
}) {
  return Container(
      decoration: BoxDecoration(color: AppColors.whiteColor, borderRadius: BorderRadius.circular(5)), child: child);
}

Align buildHeaderText(text) {
  return Align(
    alignment: Alignment.topLeft,
    child: Text(
      text,
      style: const TextStyle(color: AppColors.whiteColor, fontWeight: FontWeight.w800),
    ),
  );
}
