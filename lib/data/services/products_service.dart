import 'package:dio/dio.dart';

import '../../constants/api_links.dart';
import '../model/products_model.dart';

class ProductService {
  ProductService._();

  static final Dio _dio = Dio();

  static Future getProductService() async {
    Response response = await _dio.get(ApiLinks.fakeStoreProducts);

    if (response.statusCode == 200) {
      List products = response.data;
      List<ProductModel> productsList =
          products.map((e) => ProductModel.fromJson(e)).toList();
      return productsList;
    }
    return null;
  }
}
