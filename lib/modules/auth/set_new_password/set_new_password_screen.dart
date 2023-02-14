// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purchase_vendor/modules/auth/login/login_screen.dart';
import 'package:purchase_vendor/utils/app_colors.dart';
import 'package:purchase_vendor/utils/appvalidator.dart';
import 'package:purchase_vendor/utils/size_utils.dart';
import 'package:purchase_vendor/widgets/round_button.dart';
import 'package:purchase_vendor/widgets/textfield_with_suffix.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  bool _obscureText = true;
  bool _obscureText1 = true;
  bool isFirstSubmit = true;
  var phoneNoFocusNode = FocusNode();
  final TextEditingController _passController = TextEditingController();
  var _formKey = new GlobalKey<FormState>();

  final TextEditingController _conPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
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
                Text(
                  'I make clothes, women make fashion.'.tr,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
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
                  '— Azzedine Alaïa'.tr,
                  style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.whiteColor),
                ),
                SizedBox(
                  height: height / 5,
                ),
                const Text(
                  'Set New Password',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: AppColors.whiteColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                Form(
                  key: _formKey,
                  autovalidateMode: !isFirstSubmit ? AutovalidateMode.always : AutovalidateMode.disabled,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // 8.sbh,
                      SizedBox(
                        height: SizeUtils.horizontalBlockSize * 4,
                      ),
                      _buildPasswordWidget(),
                      SizedBox(
                        height: SizeUtils.horizontalBlockSize * 4,
                      ),
                      // 8.sbh,
                      _buildConPasswordWidget(),
                      SizedBox(
                        height: SizeUtils.horizontalBlockSize * 4,
                      ),
                      // 8.sbh,
                      _buildLoginButton()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  RoundButton _buildLoginButton() {
    return RoundButton(
      buttonLabel: 'SUBMIT'.tr,
      onTap: () async {
        setState(() {
          isFirstSubmit = false;
        });

        if (_formKey.currentState!.validate()) {
          Get.to(LoginScreen());
        }
      },
      borderColor: AppColors.greyColor0,
      color: AppColors.redColor1,
      fontSize: 13,
      fontWeight: FontWeight.w500,
      fontFamily: 'Lato',
    );
  }

  _buildPasswordWidget() {
    return TextFieldWithSuffixIcon(
      iconData: !_obscureText ? "assets/icons/visibility_off_icon.png" : "assets/icons/visibility_icon.png",
      onIconTap: () {
        setState(() {
          _obscureText = !_obscureText;
        });
      },
      textController: _passController,
      isReadOnly: false,
      keyboardType: TextInputType.text,
      isObscureText: _obscureText,
      hintText: "New Password*",
      validator: Validation().passwordValidation,
    );
  }

  _buildConPasswordWidget() {
    return TextFieldWithSuffixIcon(
      iconData: !_obscureText1 ? "assets/icons/visibility_off_icon.png" : "assets/icons/visibility_icon.png",
      onIconTap: () {
        setState(() {
          _obscureText1 = !_obscureText1;
        });
      },
      textController: _conPassController,
      isReadOnly: false,
      keyboardType: TextInputType.text,
      isObscureText: _obscureText1,
      hintText: 'key_confirm_password'.tr,
      validator: (value) {
        if (_passController.text != _conPassController.text) {
          return "Password must be same";
        }
      },
    );
  }

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void _toggleCon() {
    setState(() {
      _obscureText1 = !_obscureText1;
    });
  }
}
