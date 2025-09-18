// ignore_for_file: dead_code

import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:blinkit_clone/data/data_sources/data_sources.dart';
import 'package:blinkit_clone/presentation/pages/cart_page.dart';
import 'package:flutter/material.dart';

class GlobalViewCartWidget extends StatelessWidget {
  const GlobalViewCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    int qty = 0;
    if (cartItemsQuantity.isNotEmpty) {
      for (int value in cartItemsQuantity) {
        qty += value;
      }
    }
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CartPage()),
        );
      },
      child: Container(
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: productitemgreencolor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                // Condition for 1 Item
                if (cartItems.length == 1) ...[SizedBox(width: 40, height: 40)],
                // Condition for 2 Items
                if (cartItems.length == 2) ...[SizedBox(width: 62, height: 40)],
                // Condition for 3 Items
                if (cartItems.length > 2) ...[SizedBox(width: 84, height: 40)],
                Positioned(
                  left: 0,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: productitemgreencolor,
                            width: 2.5,
                            strokeAlign: 0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                        height: 25,
                        child: Image(
                          image: NetworkImage(
                            cartItems.length < 3
                                ? cartItems.first.imageUrl
                                : cartItems[cartItems.length - 3].imageUrl,
                          ),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),

                // Condition for 2 Items
                if (cartItems.length > 1) ...[
                  Positioned(
                    left: 22,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: productitemgreencolor,
                              width: 2.5,
                              strokeAlign: 0,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 25,
                          height: 25,
                          child: Image(
                            image: NetworkImage(
                              cartItems.length == 2
                                  ? cartItems[cartItems.length - 1].imageUrl
                                  : cartItems[cartItems.length - 2].imageUrl,
                            ),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],

                // Condition for 3 Items
                if (cartItems.length > 2) ...[
                  Positioned(
                    left: 44,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: productitemgreencolor,
                              width: 2.5,
                              strokeAlign: 0,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 25,
                          height: 25,
                          child: Image(
                            image: NetworkImage(cartItems.last.imageUrl),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "View cart",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontFamily: font,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "$qty ITEMS",
                    style: TextStyle(
                      fontFamily: font,
                      fontSize: 10,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      letterSpacing: -0.2,
                    ),
                  ),
                ],
              ),
            ),
            CircleAvatar(
              radius: 15,
              backgroundColor: viewcarticongreencolor,
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 12,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
