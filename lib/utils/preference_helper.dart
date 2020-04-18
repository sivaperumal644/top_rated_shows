import 'package:shared_preferences/shared_preferences.dart';

class PreferenceHelper{
  static Future<String> getToken() async {
    String token;
    SharedPreferences sharedPreference = await SharedPreferences.getInstance();
    token = sharedPreference.get('token');
    if(token?.isEmpty?? true){
      return null;
    } else{
      return token;
    }
  }

  static saveToken(String token) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    if(token==null) return;
    pref.setString("token", token);
  }

  static clearStorage() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }
}