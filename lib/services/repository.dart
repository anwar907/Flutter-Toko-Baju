import 'package:toko_baju/models/category.dart';
import 'package:toko_baju/models/product.dart';
import 'package:toko_baju/services/response_api.dart';
import 'package:toko_baju/services/urlList.dart';

class Reposisotry {
  Future<List<Kategori>> fetchDataCategory() async {
    List<Kategori> list = [];
    var response = await api(
        method: 'GET',
        api: UrlList.category,
        header: {'Content-Type': 'application/json; charset=UTF-8'});

    var data = response.body['data'];

    if (data == '') {
      return null;
    } else {
      for (Map<String, dynamic> result in data) {
        list.add(Kategori.fromJson(result));
      }
      return list;
    }
  }

  Future<List<DataProduct>> getDataNewFashion() async {
    List<DataProduct> listData = [];
    var response = await api(
        method: 'GET',
        api: UrlList.newFashion,
        header: {'Content-Type': 'application/json; charset=UTF-8'});

    var value = response.body['data'];

    if (value == '') {
      return null;
    } else {
      for (Map<String, dynamic> data in value) {
        listData.add(DataProduct.fromJson(data));
      }
      return listData;
    }
  }

  Future<List<DataProduct>> getDataHotSales() async {
    List<DataProduct> listData = [];
    var response = await api(
        method: 'GET',
        api: UrlList.hotSales,
        header: {'Content-Type': 'application/json; charset=UTF-8'});

    var value = response.body['data'];

    if (value == '') {
      return null;
    } else {
      for (Map<String, dynamic> data in value) {
        listData.add(DataProduct.fromJson(data));
      }
      return listData;
    }
  }
}
