import 'package:codeedex_machine_test_app/models/product_model.dart';
import 'package:codeedex_machine_test_app/utils/constants/backend_constants.dart';
import 'package:codeedex_machine_test_app/utils/initi_controllers.dart';

class ProductService {

  Future<List<ProductModel>> getProducts({
    required String id,
    required String token,
    String lang = "en",
    String by = "category",
  }) async {
    final response = await dio.post(
      "${BackendConstants.baseUrl}/products/$lang",
      queryParameters: {
        "id": id,
        "token": token,
        "by": by,
      },
    );

    final List products = response.data['products'];
    return products.map((e) => ProductModel.fromJson(e)).toList();
  }
}
