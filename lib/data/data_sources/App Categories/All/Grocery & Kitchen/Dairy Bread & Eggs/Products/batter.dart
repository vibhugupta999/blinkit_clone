import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> batterList = [];

final List<Product> batters = List.generate(batterList.length, (index) {
  return Product.fromMap(batterList[index]);
});
