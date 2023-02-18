import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

// class SharedPrefService extends GetxController {
//   static SharedPreferences? preferences;
//
//   Future<void> setToken(value) async {
//     preferences = await SharedPreferences.getInstance();
//     preferences!.setString('tokendearpet', value);
//     // token(value);
//   }
//
//   Future<void> setIsLogin(value) async {
//     preferences = await SharedPreferences.getInstance();
//     preferences!.setBool('islogindearpet', value);
//     // islogin(value);
//   }
//
//   Future<bool?> getIsLogin() async {
//     preferences = await SharedPreferences.getInstance();
//     var data = preferences!.getBool('islogindearpet');
//     return data;
//   }
//
//   Future<String?> getToken() async {
//     preferences = await SharedPreferences.getInstance();
//     var data = preferences!.getString('tokendearpet');
//     return data;
//   }
//
//   Future<void> removeToken() async {
//     preferences = await SharedPreferences.getInstance();
//     preferences!.remove('tokendearpet');
//   }
//
//   // Future<void> setUserData({required UserModel? userModel}) async {
//   //   preferences = await SharedPreferences.getInstance();
//   //   preferences!.setString('userModeldearpet', jsonEncode(userModel));
//   //   globleUserModel(userModel);
//   // }
//
//   // Future<UserModel> getUserData() async {
//   //   preferences = await SharedPreferences.getInstance();
//   //   var temp = preferences!.getString("userModeldearpet");
//   //   var dataToRetun = UserModel.fromJson(jsonDecode(temp.toString()));
//   //   globleUserModel(dataToRetun);
//   //   return dataToRetun;
//   // }
//
//   Future<void> removeUserData() async {
//     preferences = await SharedPreferences.getInstance();
//     preferences!.remove('userModeldearpet');
//   }
//
//   static Future<void> serOnBording(value) async {
//     preferences = await SharedPreferences.getInstance();
//     preferences!.setBool('onbordingdearpet', value);
//   }
//
//   static Future<bool?> getOnBording() async {
//     preferences = await SharedPreferences.getInstance();
//     var data = preferences!.getBool('onbordingdearpet');
//     return data;
//   }
// }
