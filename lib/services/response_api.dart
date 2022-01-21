import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:toko_baju/services/urlList.dart';

class ResponseAPI {
  Map<String, dynamic> body;
  int statusCode;
  http.Response response;
  ResponseAPI({this.body, this.statusCode, this.response});
}

Future<ResponseAPI> api(
    {String host,
    String method,
    String api,
    String path,
    Map<String, String> header,
    Map<String, dynamic> body}) async {
  host = UrlList.baseUrl;
  Map<String, dynamic> result = {};

  var response;

  if (method == 'GET') {
    response = await http.get(Uri.parse(host + api), headers: header);

    result = jsonDecode(response.body);
  }
  return ResponseAPI(body: result, statusCode: response.statusCode);
}
