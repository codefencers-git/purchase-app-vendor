import 'package:flutter/material.dart';
import 'package:purchase_vendor/utils/app_colors.dart';
import 'package:purchase_vendor/utils/assets_path.dart';
import 'package:purchase_vendor/widgets/app_text.dart';

class NotificationsTile extends StatefulWidget {
  const NotificationsTile({super.key});

  @override
  State<NotificationsTile> createState() => _NotificationsTileState();
}

class _NotificationsTileState extends State<NotificationsTile> {
  String sampleData =
      "Exports, which constitute about 22% of the industry, have fallen for five months in a row - declining over 15% year-on-year in November to \$3.1 billion.";
  String sampleTime = '21/11/22 | 3:48 PM';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Trext(
            txtData: sampleData,
            txtColor: AppColors.blackColor,
            txtSize: 12.0,
            txtFont: 'Lato-Light',
            txtWeight: FontWeight.w300,
            txtAlign: TextAlign.start,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Trext(
                txtData: sampleTime,
                txtColor: AppColors.blackColor,
                txtSize: 10.0,
                txtFont: AssetsPath.lato,
                txtWeight: FontWeight.w500,
                txtAlign: TextAlign.start,
              ),
            ],
          ),
          Divider(
            color: AppColors.greyColor0,
            height: 1.0,
          )
        ],
      ),
    );
  }
}
