import 'package:shared_preferences/shared_preferences.dart';

class PersistanceUtils {
  static Future<String?> getUserTokenFromMemory() async {
    try {
      SharedPreferences? prefs = await SharedPreferences.getInstance();
      return prefs.getString('bearerJwtToken')!;
    } catch (e) {
      print(e);
      return null;
    }
  }

  static Future<bool> removeUserOnMemory() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.remove('bearerJwtToken');
  }

  static Future<bool> addUserTokenOnMemory(String jwtToken) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString('bearerJwtToken', jwtToken);
  }
}
