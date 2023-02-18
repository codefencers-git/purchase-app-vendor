import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StringsUtils {
  StringsUtils._();

  static const String emptyQuote = '';
  static ValueNotifier<int> bottomIndex = ValueNotifier(0);
  static int bottomNavigationBarItemIndex = 1;

  /// app
  static const String appName = 'Purchase Vendor App';
  static const String areYouSure = 'Are you sure?';
  static const String cancel = 'Cancel';
  static const String logOut = 'Log out';
  static const String internetCheckError = 'Please check internet connection!!';
  static const String check = 'Check';
  static const String ok = 'Ok';
  static const String noTag = 'No Tag';
  static const String couldNotFindTheRequestedData = "Couldn't find the requested data";
  static const String xmppConnectionLost = "XMPP connection lost";
  static const String badResponseFormat = 'Bad response format';
  static const String somethingWentWrong = 'Something went wrong';
  static const String sessionExpire = 'Session Expire';
  static const String yourSessionHasExpirePleaseLoginAgain = 'Your Session has expire please login again!!';

  ///Date format
  static const String ddMmYy = 'dd-MM–yyyy';
  static const String ddMmYyy = 'yyyy-MM-d';
  static const String ddMmHhMmA = 'dd/MM – hh:mm a';
  static const String dMMMyHA = "d - MMM- y | h a";
  static const String yMMMdForMate = 'yMMMd';
  static const String EEE = 'EEE';
  static const String dd = 'dd';

  ///auth
  static const String signUp = 'Sign Up';
  static const String signIn = 'Sign In';
  static const String logIn = 'Log In';
  static const String emailAddress = 'Email address';
  static const String enterEmail = 'Enter your email';
  static const String newPassword = 'New Password';
  static const String enterPWD = 'Enter password';
  static const String enterNewPWD = 'Enter New password';
  static const String password = 'Password';
  static const String otp = 'Otp';
  static const String enterOtp = 'Enter Otp';
  static const String confirmPwd = 'Confirm Password';
  static const String reEnterPwd = 'Re - enter password';
  static const String forgotPassword = 'Forgot Password';
  static const String verifyEmail = 'Verify Your Email';
  static const String confirm = 'Confirm';
  static const String confirmPassword = 'Confirm Password';
  static const String donHaveAccount = "Don't have an account?";
  static const String alreadyAccount = "Already have an account?";
  static const pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  ///Past Loads
  static const String noDataFound = "No Data Found!";
  static const String noPastLoadMessage = 'No Past Loads !!';

  ///validation
  static const String plzEnterEmail = 'Please enter email';
  static const String plzEnterAllDetails = 'Please fill all details';
  static const String plzEnterAmount = 'Amount';
  static const String plzEnterText = 'Text';
  static const String emailRegExp = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  static const String aZRegExp = r'[a-zA-Z]';
  static const String numberRegExp = r'[0-9]';

  // static const String emailRegExp = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  static const String enterValidEmail = 'Please enter valid email';
  static const String enterValidOtp = 'Please enter valid OTP';
  static const String enterValidAmount = 'amount';
  static const String enterValidText = 'Text';
  static const String plzEnterPWD = 'Please enter Password';
  static const String pWDRegExp = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
  static const String amountValid = r'^([0-9])';
  static const String textValid = '[a-zA-Z]';
  static const String pWDMustBeUpperLower = 'Password must be Uppercase,Lowercase,digit and specialCharacters';

  // static const String pWDMustBeUpperLower = 'Password must be Uppercase,Lowercase,digit and specialCharacters';
  static const String plzEnterConfirmPwd = 'Please enter confirm password';
  static const String plzEnterOtp = 'Please enter OTP';
  static const String confirmPwdWithSameAbove = 'Confirm Password must be same as above';
  static const String typeHere = 'Please type here';
  static const String pleaseSelectValidRange = 'Please select valid date range';
  static const String pleaseSelectMaxRange7 = 'Please select maximum range 7 days';

  ///exit app
  static const String wanToExitApp = 'Do you want to exit an App?';
  static const String exitApp = 'Exit App';

  /// settings
  static const documentTitle = 'Rate Us';
  static const documentSubTile = 'Share with your friends and family';
  static const notification = 'Notification';
  static const autoReply = 'Message Response Stats';
  static const upgrade = 'Upgrade App';
  static const advance = 'Advance Settings';
  static const Appearance = 'Appearance';
  static const Notification = 'Notification';
  static const Privacy = 'Privacy';
  static const Help = 'Help';
  static const InviteFriends = 'Invite your friends';

  /// dashboards
  static const NewDesign = 'New Design';
  static const orderHistory = 'Order History';
  static const repeatOrder = 'Repeat Order';
  static const myProfile = 'My Profile';
  static const videos = 'Videos';
  static const more = 'More';

  /// GlobalMessages
  static String emptyMessage = "Please Enter ";
  static String pleaseSelect = "Please Select ";

  static String pleaseEnterValidEmail = 'key_valid_email_msg'.tr;
  static String pleasEenterVaildOTP = 'key_valid_otp_msg'.tr;
  static String phoneNumberinvalied = 'key_valid_phone_number_msg'.tr;

  static String nameLengthMessage = 'key_name_lenth_message'.tr;

  static String passwordshoudbeatleat = 'key_password_lenth_message'.tr;
  static String passwordshoudbeatsame = 'key_same_password'.tr;
  static String incorrectConfirmPassword = 'key_password_not_match'.tr;

  static String socketExceptionMessage = 'key_socket_exception'.tr;
  static String timeoutExceptionMessage = 'key_timeout_exception'.tr;

  static String somethingwentwongMessage = 'key_something_went_wrong'.tr;
  static String logoutSuccess = 'key_logout_success_msg'.tr;
  static String successfullyLogin = 'key_login_success_msg'.tr;
  static String unauthorizedUser = 'key_unauthorized_user'.tr;
  static String otpSendsuccess = 'key_OTP_send_successfully'.tr;

  static String paymentSuccees = 'key_paymet_success_msg'.tr;
  static String paymentFaild = 'key_paymet_fail_msg'.tr;
  static String internalservererror = 'key_internal_server_error'.tr;
  static String internalnotConnected = 'key_internet_not_connected'.tr;

  static String registerVendor = 'key_register_vendor'.tr;
  static String registerMerchant = 'key_register_merchant'.tr;

  static String venAdd = 'key_add'.tr;
  static String newDesign = 'key_new_design'.tr;
}
