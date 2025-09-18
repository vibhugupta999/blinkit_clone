import 'package:blinkit_clone/data/models/product.dart';

final List<Map<String, dynamic>> organicOil = [];

final List<Product> organics = List.generate(organicOil.length, (index) {
  return Product.fromMap(organicOil[index]);
});
