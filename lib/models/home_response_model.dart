import 'package:codeedex_machine_test_app/models/banner_model.dart';
import 'package:codeedex_machine_test_app/models/category_model.dart';
import 'package:codeedex_machine_test_app/models/product_model.dart';

class HomeResponseModel {
  final int success;
  final List<BannerModel> banner1;
  final List<CategoryWrapper> categories;
  final List<ProductModel> newArrivals;
  final int cartCount;

  HomeResponseModel({
    required this.success,
    required this.banner1,
    required this.categories,
    required this.newArrivals,
    required this.cartCount,
  });

  factory HomeResponseModel.fromJson(Map<String, dynamic> json) {
    return HomeResponseModel(
      success: json['success'],
      banner1: (json['banner1'] as List)
          .map((e) => BannerModel.fromJson(e))
          .toList(),
      categories: (json['categories'] as List)
          .map((e) => CategoryWrapper.fromJson(e))
          .toList(),
      newArrivals: (json['newarrivals'] as List)
          .map((e) => ProductModel.fromJson(e))
          .toList(),
      cartCount: json['cartcount'] ?? 0,
    );
  }
}

class CategoryWrapper {
  final CategoryModel category;
  final int subcategory;

  CategoryWrapper({
    required this.category,
    required this.subcategory,
  });

  factory CategoryWrapper.fromJson(Map<String, dynamic> json) {
    return CategoryWrapper(
      category: CategoryModel.fromJson(json['category']),
      subcategory: json['subcategory'],
    );
  }
}


