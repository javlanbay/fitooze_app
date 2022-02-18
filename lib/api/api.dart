import 'dart:convert';

import 'package:http/http.dart' as http;

class CallApi {
  final String _url = "https://api.yaqubov.info/api/v1.0/";
  postData(data, apiUrl) async {
    var fullUrl = _url + apiUrl;

    return await http.post(
        Uri.parse("http://api.yaqubov.info/api/v1.0/register"),
        body: jsonEncode(data),
        headers: _setHeaders());
  }

  _setHeaders() => {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      };
}
