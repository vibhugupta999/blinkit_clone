import 'package:blinkit_clone/data/models/sub_category.dart';

class Category {
  final String categoryName;
  final String categoryImageUrl;
  final List<SubCategory> subcategoryList;

  const Category({
    required this.categoryName,
    required this.categoryImageUrl,
    required this.subcategoryList,
  });

  Category copyWith({
    String? categoryName,
    String? categoryImageUrl,
    List<SubCategory>? subcategoryList,
  }) {
    return Category(
      categoryName: categoryName ?? this.categoryName,
      categoryImageUrl: categoryImageUrl ?? this.categoryImageUrl,
      subcategoryList: subcategoryList ?? this.subcategoryList,
    );
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      categoryName: map["categoryName"],
      categoryImageUrl: map["categoryImageUrl"],
      subcategoryList: map["subcategoryList"],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "categoryName": categoryName,
      "categoryImageUrl": categoryImageUrl,
      "subcategoryList": subcategoryList,
    };
  }
}
