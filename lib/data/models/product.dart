import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String weight;
  final int price;
  final double rating;
  final int ratingCount;
  final String imageUrl;

  const Product({
    required this.name,
    required this.weight,
    required this.price,
    required this.rating,
    required this.ratingCount,
    required this.imageUrl,
  });

  Product copyWith({
    String? name,
    String? weight,
    int? price,
    double? rating,
    int? ratingCount,
    String? imageUrl,
  }) {
    return Product(
      name: name ?? this.name,
      weight: weight ?? this.weight,
      price: price ?? this.price,
      rating: rating ?? this.rating,
      ratingCount: ratingCount ?? this.ratingCount,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      name: map["name"] ?? "",
      weight: map["weight"] ?? 0,
      price: map["price"] ?? 0,
      rating: map["rating"] ?? 0,
      ratingCount: map["ratingCount"] ?? 0,
      imageUrl: map["imageUrl"] ?? "",
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "weight": weight,
      "price": price,
      "rating": rating,
      "ratingCount": ratingCount,
      "imageUrl": imageUrl,
    };
  }

  @override
  List<Object?> get props => [
    name,
    weight,
    price,
    rating,
    ratingCount,
    imageUrl,
  ];
}
