import 'package:blinkit_clone/data/models/category.dart';

class SuperCategory {
  final String name;
  final List<Category> categories;
  SuperCategory({required this.name, required this.categories});

  factory SuperCategory.fromMap(Map<String, dynamic> map) {
    return SuperCategory(
      name: map["superCategoryName"],
      categories: map["categories"],
    );
  }

  Map<String, dynamic> toMap() {
    return {"superCategoryName": name, "categories": categories};
  }
}
