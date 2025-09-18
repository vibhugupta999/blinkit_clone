import 'package:blinkit_clone/data/models/product.dart';

class SubCategory {
  final String subcategoryName;
  final String subcategoryImageUrl;
  final List<Product> productList;

  const SubCategory({
    required this.subcategoryName,
    required this.subcategoryImageUrl,
    required this.productList,
  });

  SubCategory copyWith({
    String? subcategoryName,
    String? subcategoryImageUrl,
    List<Product>? productList,
  }) {
    return SubCategory(
      subcategoryName: subcategoryName ?? this.subcategoryName,
      subcategoryImageUrl: subcategoryImageUrl ?? this.subcategoryImageUrl,
      productList: productList ?? this.productList,
    );
  }

  factory SubCategory.fromMap(Map<String, dynamic> map) {
    return SubCategory(
      subcategoryName: map["subcategoryName"],
      subcategoryImageUrl: map["subcategoryImageUrl"],
      productList: map["productList"],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "subcategoryName": subcategoryName,
      "subcategoryImageUrl": subcategoryImageUrl,
      "productList": productList,
    };
  }
}
