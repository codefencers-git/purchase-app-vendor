import 'package:flutter/material.dart';
import 'package:purchase_vendor/utils/app_colors.dart';
import 'package:purchase_vendor/utils/assets_path.dart';
import 'package:purchase_vendor/utils/size_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    SizeUtils().init(context);
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: SizedBox(
          width: SizeUtils.horizontalBlockSize * 100,
          child: Stack(
            children: [
              _buildCenterIcon(SizeUtils.horizontalBlockSize * 100),
            ],
          ),
        ),
      ),
    );
  }

  Center _buildCenterIcon(double width) {
    return Center(
      child: SizedBox(
        width: width * 0.8,
        child: Image.asset(
          AssetsPath.splashIcon,
        ),
      ),
    );
  }
}
