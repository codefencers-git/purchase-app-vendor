import 'package:get/get_utils/get_utils.dart';
import 'package:purchase_vendor/utils/strings_utils.dart';

class AppValidator {
  static String? emailValidator(String? value) {
    const Pattern pattern = StringsUtils.emailRegExp;
    final RegExp regex = RegExp(pattern.toString());
    if (value!.isEmpty) {
      return StringsUtils.plzEnterEmail;
    } else if (!regex.hasMatch(value)) {
      return StringsUtils.enterValidEmail;
    } else {
      StringsUtils.emptyQuote;
    }
    return null;
  }

  static String? passwordValidator(String? value) {
    if (value!.isEmpty) {
      return StringsUtils.plzEnterPWD;
    } else if (!(RegExp(StringsUtils.pWDRegExp).hasMatch(value.trim()))) {
      return StringsUtils.pWDMustBeUpperLower;
    } else {
      return null;
    }
  }

  String? confirmPasswordValidator(String? value, {required String password}) {
    if (value!.isEmpty) {
      return StringsUtils.plzEnterPWD;
    } else if (!(RegExp(StringsUtils.pWDRegExp).hasMatch(value.trim()))) {
      return StringsUtils.pWDMustBeUpperLower;
    } else {
      return null;
    }
  }

  static String? otpValidation(String? value) {
    if (value!.isEmpty) {
      return "Please fill 6 digit code";
    } else if (value.length <= 5) {
      return "Please fill 6 digit code";
    } else {
      return null;
    }
  }
}

class Validation {
  bool isNumeric(String str) {
    try {
      // var value = int.parse(str);
    } on FormatException {
      return false;
    }
    return true;
  }

  String? emailAndPhoneValidation(String? value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern.toString());
    if (value!.isEmpty) {
      return StringsUtils.emptyMessage + 'phone number or email';
    }
    if (isNumeric(value)) {
      if (value.length != 10) {
        return StringsUtils.emptyMessage + 'valid phone number';
      }
    } else if (!regex.hasMatch(value)) {
      return StringsUtils.pleaseEnterValidEmail;
    }
    return null;
  }

  String? emailValidation(String? value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern.toString());
    if (value!.isEmpty) {
      return StringsUtils.emptyMessage + 'email';
    } else if (!regex.hasMatch(value)) {
      return StringsUtils.pleaseEnterValidEmail;
    }
    return null;
  }

  String? passwordValidation(String? value) {
    if (value!.isEmpty) {
      return "${StringsUtils.emptyMessage} password field";
    } else {
      var passwordLength = value.length;
      if (passwordLength < 8) {
        return StringsUtils.emptyMessage + 'valid phone number';
      }
    }
    return null;
  }
  String? currentPasswordValidation(String? value) {
    if (value!.isEmpty) {
      return "${StringsUtils.emptyMessage} current password field";
    }
    return null;
  }

  String? phoneNumberValidation(String? value) {
    Pattern pattern = r'^^[1-9][0-9]{9}$';
    RegExp regex = RegExp(pattern.toString());
    if (value!.isEmpty) {
      return '${StringsUtils.emptyMessage}phone number';
    } else if (!regex.hasMatch(value)) {
      return StringsUtils.emptyMessage + 'valid phone number';
    }
    return null;
  }

  String? nameValidation(String? value) {
    if (value!.isEmpty) {
      return StringsUtils.emptyMessage + 'name';
    }
    if (value.length < 3) {
      return StringsUtils.nameLengthMessage;
    }
    return null;
  }

  String? dobValidation(String? value) {
    if (value!.isEmpty) {
      return StringsUtils.pleaseSelect + 'Date Of Birth';
    }
    if (value.length < 3) {
      return StringsUtils.nameLengthMessage;
    }
    return null;
  }

  String? addressValidation(String? value) {
    if (value == null) {
      return 'Please Enter Valid Address';
    } else if (value.isEmpty) {
      return 'Please Enter Valid Address';
    }

    //  else if (value.length < 2) {
    //   return 'Please Enter Valid Address';
    // }
    return null;
  }

  String? address2Validation(value) {
    if (value == null) {
      return 'key_address_line-2'.tr;
    } else if (value.length < 2) {
      return 'key_address_validation'.tr;
    }
    return null;
  }

  String? pincodeValidation(value) {
    Pattern pattern = r'^^[1-9][0-9]{5}$';
    RegExp regex = RegExp(pattern.toString());

    if (value == null) {
      return 'Please enter pincode';
    } else if (!regex.hasMatch(value)) {
      return 'Please valid pincode';
    }
    return null;
  }
}
