import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:blinkit_clone/data/data_sources/data_sources.dart';
import 'package:blinkit_clone/data/models/product.dart';
import 'package:flutter/material.dart';

class GlobalAddToCartWidget extends StatelessWidget {
  const GlobalAddToCartWidget({
    super.key,
    required this.addToCart,
    required this.removeFromCart,
    required this.length,
    required this.product,
  });

  final VoidCallback addToCart;
  final VoidCallback removeFromCart;
  final int length;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return cartItems.contains(product)
        ? Container(
            width: length.isEven ? screenWidth * 0.22 : screenWidth * 0.18,
            height: screenWidth * 0.1,
            decoration: BoxDecoration(
              color: productitemgreencolor,
              borderRadius: BorderRadiusGeometry.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: removeFromCart,
                  child: Container(
                    alignment: Alignment.center,
                    child: Icon(Icons.remove, color: Colors.white),
                  ),
                ),
                Text(
                  "${cartItemsQuantity[cartItems.indexOf(product)]}",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: font,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: addToCart,
                  child: Container(
                    alignment: Alignment.center,
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ),
              ],
            ),
          )
        : GestureDetector(
            onTap: addToCart,
            child: Container(
              width: length.isEven ? screenWidth * 0.2 : screenWidth * 0.15,
              height: screenWidth * 0.1,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: productitemgreencolor, width: 1.5),
                borderRadius: BorderRadiusGeometry.circular(10),
              ),
              child: Text(
                "ADD",
                style: TextStyle(
                  color: productitemgreencolor,
                  fontFamily: font,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
  }
}
