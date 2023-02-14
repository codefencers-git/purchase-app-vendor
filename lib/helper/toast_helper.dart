import 'package:fluttertoast/fluttertoast.dart';

class showToast {
  static void toastMessage(
    String message,
  ) {
    Fluttertoast.showToast(msg: message, toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.BOTTOM, fontSize: 14);
  }
}
