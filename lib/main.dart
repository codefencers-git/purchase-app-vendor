import 'dart:async';
import 'package:get_storage/get_storage.dart';
import 'package:purchase_vendor/purchase_vendor.dart';
import 'package:purchase_vendor/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: AppColors.primaryColor,
  ));
  runApp(const PurchaseVendorApp());
}
