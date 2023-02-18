


import 'package:get_storage/get_storage.dart';

class AppSharedPreference {
  static final _getStorage = GetStorage();

  static const _userId = 'user_id';
  static const _jwtToken = 'jwt_Token';
  static const _onBoarding = 'onBoarding';


  // static Future<void> setUserToken(String userToken) async => _getStorage.write(_userToken, userToken);
  //
  // static String? get userToken => _getStorage.read(_userToken);


  static Future<void> setJwtToken(String jwtToken) async => _getStorage.write(_jwtToken, jwtToken);

  static String? get jwtToken => _getStorage.read(_jwtToken);

  static Future<void> setOnBoarding(bool onBoarding) async => _getStorage.write(_onBoarding, onBoarding);

  static bool? get onBoarding => _getStorage.read(_onBoarding);



  static int? get userId {
    return _getStorage.read(_userId);
  }

  static void clear() => _getStorage.erase();
}