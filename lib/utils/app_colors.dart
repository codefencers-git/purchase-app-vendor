import 'package:flutter/material.dart';
import 'package:purchase_vendor/utils/assets_path.dart';

class AppColors {
  AppColors._();

  static const Color whiteColor = Color(0xFFFFFFFF);
  static final Color whiteColor2 = Color(0xFFFCFCFC);
  static final Color whiteColor3 = Color(0xFFF6F6F6);
  static final Color whiteDarkColor = Color(0xFFFBFBFB);

  static final Color orangeColor1 = Color(0xFFFE4300);
  static final Color orangeLightColor = Color(0xFFFFF9F6);
  static final Color orangeLightColor1 = Color(0xFFfe9975);
  static final Color orangeLightColor2 = Color(0xffFFECE5);

  static final Color yellowColor = Color(0xFFFFEE00);
  static final Color yellowColor1 = Color(0xFFFFBE00);

  static final Color redColor = Color(0xFFD70222);
  static final Color redColor1 = Color(0xFFC51724);
  static final Color redColor2 = Color(0xFFFE0000);
  static final Color maroonColor = Color(0xFF6F0F16);
  static final Color orangeColor = Color(0xFFFF6600);

  static final Color greenColor = Color(0xFF0A9200);
  static final Color greenColor1 = Color(0xFF39CC21);
  static final Color greenColor2 = Color(0xFF116418);

  static const Color blackColor = Color(0xFF000000);
  static const Color blackColor1 = Color(0xFF1E1E1E);
  static const Color blackColor2 = Color(0xFF0E0E0E);
  static const Color blackColor3 = Color(0xFF1D1D1D);

  static final Color darkgreyColor = Color(0xFF292929);

  static const Color greyColor3 = Color(0xFFF1F1F1);
  static const Color greyColor0 = Color(0xFFC7A6A9);
  static const Color greyColor6 = Color(0xFF969696);
  static const Color greyColor = Color(0xFF777777);
  static const Color greyColor1 = Color(0xFF5B5B5B);
  static const Color greyColor2 = Color(0xFFB2B2B2);
  static const Color greyColor4 = Color(0xFFA7A7A7);
  static final Color greyColor5 = Color(0xFFF5F5F5);
  static final Color greyColor7 = Color(0xFFC8C8C8);

  static final greyLightColor = Color(0xffFBFBFB);
  static final greyLightColor1 = Color(0xffE3E3E3);
  static final greyLightColor2 = Color(0xffF4F9F9);

  static final notificationSettingGrey = Color(0xffB8B8B8);

  static final Color transparent = Color(0x00000000);

  static final Color blueDarkColor = Color(0xFF008FBF);
  static final Color blueDarkColor2 = Color(0xFF482B7F);

  static final Color blueColor = Color(0xFFC3E7F3);
  static final Color blueColor2 = Color(0xFF204C77);

  static final Color boxColor1 = Color(0xffF89270);
  static final Color boxColor2 = Color(0xffFFD65D);
  static final Color boxColor3 = Color(0xffE84F66);
  static final Color boxColor4 = Color(0xffF384AF);
  static final Color boxColor5 = Color(0xffFDD65D);
  static final Color boxColor6 = Color(0xffF782AF);
  static final Color boxColor7 = Color(0xffF99271);
  static final Color boxColor8 = Color(0xffE84F66);
  static final Color skyblueColor = Color(0xffF3FAFF);

  static final themeData = ThemeData(
    primaryColor: AppColors.blackColor3,
    fontFamily: AssetsPath.lato,
    splashColor: AppColors.blackColor3,
  );

  static const MaterialColor white = MaterialColor(0xFFFFFFFF, <int, Color>{
    10: Color(0xFFFFFFFF),
    20: Color(0xFFEBEBEB),
    30: Color(0xFFFCFCFC),
    40: Color(0xFFF7F7F7),
    50: Color(0xFFE9EEF3),
    60: Color(0xFFE6E7ED),
    70: Color(0xFFB9BBCB),
    80: Color(0xFFE6E6E6),
    90: Color(0xFFC8C8C8),
    100: Color(0xFFD6D6D6),
    200: Color(0xFFCCCCCC),
  });
  static const Color borderColor = Color.fromRGBO(255, 255, 255, 0.2);
  static const Color indicatorBorderColor = Color.fromRGBO(0, 0, 0, 0.1);

  static const MaterialColor black = MaterialColor(0xFF000000, <int, Color>{
    100: Color(0xFF000000),
    200: Color(0xFF1C1C1E),
    300: Color(0xFF919095),
  });

  // 0xffF7F8FE

  static const MaterialColor primaryColor = MaterialColor(0xFF000000, <int, Color>{
    100: Color(0xFF000000),
    // 100: Color(0xFF791435),
    // 100: Color(0xFF791435),
  });
  static const MaterialColor unselectedColor = MaterialColor(0xFF888888, <int, Color>{
    100: Color(0xFF888888),
  });

  static const MaterialColor grey = MaterialColor(0xFF5F5F5F, <int, Color>{
    10: Color(0xFF414141),
    20: Color(0xFF3F3F3F),
    30: Color(0xFF595959),
    40: Color(0xFF5F5F5F),
    50: Color(0xFF636363),
    60: Color(0xFF666666),
    70: Color(0xFF959595),
    80: Color(0xFFAFAFAF),
    90: Color(0xFFCCD0CC),
    100: Color(0xFF656565),
    200: Color(0xFFC4C4C4),
    300: Color(0xFFA7A7A7),
    400: Color(0xFF999999),
  });
}
