/*
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:reservation_app/src/models/urls.dart';

class ApiServices {
  static Future<dynamic> _get(String url) async {
    try {
      final reponse = await http.get(url);
      if (reponse.statusCode == 200) {
        print(reponse.body);
        return json.decode(reponse.body);
      } else {
        return null;
      }
    } catch (ex) {
      return null;
    }
  }

  static Future<Map<String, dynamic>> getUser() async {
    return _get("${Urls.BASE_URL_API}/users");
  }
}
*/
