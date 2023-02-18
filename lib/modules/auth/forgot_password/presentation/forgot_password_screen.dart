import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purchase_vendor/helper/loading_helper.dart';
import 'package:purchase_vendor/modules/auth/forgot_password/controller/forgot_password_controller_screen.dart';
import 'package:purchase_vendor/modules/auth/otp_verification/presentation/otp_verification_screen.dart';
import 'package:purchase_vendor/utils/app_colors.dart';
import 'package:purchase_vendor/utils/appvalidator.dart';
import 'package:purchase_vendor/utils/country_utils.dart';
import 'package:purchase_vendor/utils/size_utils.dart';
import 'package:purchase_vendor/widgets/custom_text_field.dart';
import 'package:purchase_vendor/widgets/round_button.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  ForgotPasswordController forgotPasswordController = Get.find();

  bool isFirstSubmit = true;
  var selectedCountry = Country.parse('IN');
  var phoneNoFocusNode = FocusNode();

  // final TextEditingController _emailOrPhoneController = TextEditingController();
  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      backgroundColor: AppColors.redColor1,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "I don't design clothes. I design dreams",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w300,
                    color: AppColors.whiteColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '- Ralph Lauren'.tr,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.whiteColor),
                ),
                SizedBox(
                  height: height / 4,
                ),
                Text(
                  'Forgot Password?'.tr,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: AppColors.whiteColor),
                ),
                const SizedBox(
                  height: 10,
                ),
                Form(
                    key: _formKey,
                    autovalidateMode: !isFirstSubmit
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: SizeUtils.horizontalBlockSize * 4,
                        ),
                        _buildPhoneNumber(),
                        SizedBox(
                          height: SizeUtils.horizontalBlockSize * 4,
                        ),
                        Obx(
                              () =>
                          forgotPasswordController.isOtpLoading.value
                              ? Padding(
                            padding: EdgeInsets.only(
                                top: SizeUtils.horizontalBlockSize * 5
                            ),
                            child: Loading(),
                          )
                              : _buildLoginButton(),
                        )


                        // _buildLoginButton(),

                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  RoundButton _buildLoginButton() {
    return RoundButton(
      buttonLabel: 'Submit'.tr,
      onTap: () async {
        // setState(() {
        //   isFirstSubmit = false;
        // });

        if (_formKey.currentState!.validate()) {
          forgotPasswordController.sendOtp(
            username: forgotPasswordController.emailOrPhoneController.text,
          );
          // forgotPasswordController.otp.value =
        }
      },
      borderColor: AppColors.greyColor0,
      color: AppColors.redColor1,
      fontSize: 13,
      fontWeight: FontWeight.w500,
      fontFamily: 'Lato',
    );
  }

  Container _buildPhoneNumber() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          buildCountryPicker(context),
          const SizedBox(
            width: 30,
            height: 30,
            child: VerticalDivider(
              color: AppColors.greyColor6,
            ),
          ),
          Expanded(
            child: TextFieldWidget(
              textController: forgotPasswordController.emailOrPhoneController,
              isReadOnly: false,
              keyboardType: TextInputType.number,
              isObscureText: false,
              hintText: 'Enter Phone number'.tr,
              validator: Validation().phoneNumberValidation,
            ),
          )
        ],
      ),
    );
  }

  InkWell buildCountryPicker(BuildContext context) {
    return InkWell(
      onTap: () {
        showCountryPicker(
          // countryFilter: ["IN", "PK"],
          countryListTheme:
          CountryListThemeData(borderRadius: BorderRadius.circular(15)),
          context: context,
          showPhoneCode:
          true, // optional. Shows phone code before the country name.
          onSelect: (Country country) {
            setState(() {
              selectedCountry = country;
            });
          },
        );
      },
      child: Row(
        children: [
          Text(
            CountryUtils.countryCodeToEmoji(selectedCountry.countryCode),
          ),
          const SizedBox(
            width: 10,
          ),
          // const Icon(Icons.keyboard_arrow_down),
          Center(child: Text('+${selectedCountry.phoneCode}')),
        ],
      ),
    );
  }
}
