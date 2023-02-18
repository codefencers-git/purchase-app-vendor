// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:purchase_vendor/helper/shared_pref_services.dart';
import 'package:purchase_vendor/helper/shared_preferences.dart';
import 'package:purchase_vendor/modules/auth/login/presentation/login_screen.dart';
import 'package:purchase_vendor/utils/app_colors.dart';

class OnBordingScreen extends StatefulWidget {
  OnBordingScreen({Key? key}) : super(key: key);

  @override
  _OnBordingScreenState createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
  List sliderList = [1, 2, 3, 4, 5];
  bool isshowButton = false;
  var _current = 0;
  bool isLastIndex = false;

  changeIndex(int index) {
    if (index + 1 == sliderList.length) {
      setState(() {
        isshowButton = true;
      });
    }
    setState(() {
      _current = index;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    _disableOnBoarding();
    super.initState();
  }

  _disableOnBoarding() async {
    await AppSharedPreference.setOnBoarding(true);
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: height * 0.85,
                  enlargeCenterPage: false,
                  enableInfiniteScroll: false,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    changeIndex(index);
                  },
                  aspectRatio: 1.0,

                  // initialPage: 2,
                ),
                items: sliderList
                    .map((e) => _buildCards(height, _current))
                    .toList(),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    !isshowButton
                        ? InkWell(
                            onTap: () {
                              Get.to(LoginScreen());
                              // Navigator.pushAndRemoveUntil<void>(
                              //   context,
                              //   MaterialPageRoute<void>(
                              //       builder: (BuildContext context) =>
                              //           MainScreen()),
                              //   ModalRoute.withName('/main'),
                              // );
                            },
                            child: Text(
                              "Skip",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: AppColors.greyColor,
                                  fontWeight: FontWeight.normal),
                            ),
                          )
                        : Spacer(),
                    Spacer(),
                    Wrap(
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: sliderList.map((url) {
                              int index = sliderList.indexOf(url);
                              return Container(
                                width: 18.0,
                                height: _current == index ? 3 : 1.5,
                                margin: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 2.0),
                                decoration: BoxDecoration(
                                  // shape: BoxShape.circle,
                                  color: _current == index
                                      ? AppColors.redColor
                                      : AppColors.greyColor,
                                ),
                              );
                            }).toList(),
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    isshowButton
                        ? InkWell(
                            onTap: () async {
                              await _disableOnBoarding();
                              Get.to(LoginScreen());
                              // Navigator.pushAndRemoveUntil<void>(
                              //   context,
                              //   MaterialPageRoute<void>(
                              //       builder: (BuildContext context) =>
                              //           LoginScreen()),
                              //   ModalRoute.withName('/main'),
                              // );
                            },
                            child: Text(
                              "Done",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: AppColors.greyColor,
                                  fontWeight: FontWeight.normal),
                            ),
                          )
                        : Spacer(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Column _buildCards(double height, index) {
    return Column(
      children: [
        Container(
          // margin: EdgeInsets.all(20),
          height: height * 0.58,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage(
                  'assets/images/fashion-sampling-fashioninsiders-1@2x.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            vertical: 15,
          ),
          child: Text(
            "THE EASY GUIDE TO FASHION SAMPLING",
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20,
                color: AppColors.redColor,
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Text(
            "Bringing your ideas to life in the form of a tangible product is the icing on the cake after months of designing, fabric sourcing and pattern cutting.",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16,
                color: AppColors.greyColor,
                fontWeight: FontWeight.normal),
          ),
        ),
      ],
    );
  }
}
