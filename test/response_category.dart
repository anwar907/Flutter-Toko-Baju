import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:toko_baju/services/response_api.dart';
import 'package:toko_baju/services/urlList.dart';

void main() {
  group("test response dari masing-masing endpoint", () {
    test(' category hioryzontal', () async {
      var response = await api(method: 'GET', api: UrlList.category);
      assert(response.statusCode == 200);
      print(response.body);
    });

    test(' dari new fashion', () async {
      var response =
          await http.get(Uri.parse(UrlList.baseUrl + UrlList.newFashion));
      assert(response.statusCode == 200);
      print(response.statusCode);
    });

    test(' dari hot fashion', () async {
      var response =
          await http.get(Uri.parse(UrlList.baseUrl + UrlList.hotSales));
      assert(response.statusCode == 200);
      print(response.statusCode);
    });
  });
}
