import 'package:http/http.dart' as http;
import 'dart:convert';

Future loginUser(String email, String password) async {
  String url = 'http://regalo.optimisttechhub.com/api/v1/auth/login';
  final response = await http.post(url,
      headers: {"Accept": "*/*"}, body: {'email': email, 'password': password});
  var convertedDataToJson = jsonDecode(response.body);
  return convertedDataToJson;
}
