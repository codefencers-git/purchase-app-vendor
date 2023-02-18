import 'package:purchase_vendor/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class Loading extends StatelessWidget {
  final Color? colors;

  const Loading({this.colors, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 30,
        width: 25,
        child: LoadingIndicator(
          indicatorType: Indicator.lineSpinFadeLoader,
          colors: [colors ?? AppColors.white],
          strokeWidth: 2,
        ),
      ),
    );
  }
}

// class NoData extends StatelessWidget {
//   const NoData({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Image.asset(
//           AssetsPath.noDataImage,
//           scale: 5,
//         ),
//         SizedBox(
//           height: SizeUtils.verticalBlockSize * 3,
//         ),
//         Center(child: Text(StringsUtils.noDataFound, style: AppTextStyle.bodyRegular[20]?.copyWith(color: AppColors.colors[900]))),
//       ],
//     );
//   }
// }
