import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:blinkit_clone/data/data_sources/data_sources.dart';
import 'package:blinkit_clone/data/models/product.dart';
import 'package:blinkit_clone/presentation/bloc/cart%20bloc/cart_bloc.dart';
import 'package:blinkit_clone/presentation/bloc/detail%20page%20bloc/detail_page_bloc.dart';
import 'package:blinkit_clone/presentation/widgets/global/global_add_to_cart_widget.dart';
import 'package:blinkit_clone/presentation/widgets/global/global_rating_count_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GlobalPackedProductItemWidget extends StatelessWidget {
  final bool isCartEmpty;
  final VoidCallback onItemTap;
  final int length;
  final Product product;
  final DetailPageBloc detailPageBloc;

  const GlobalPackedProductItemWidget({
    super.key,
    required this.onItemTap,
    required this.isCartEmpty,
    required this.length,
    required this.product,
    required this.detailPageBloc,
  });

  @override
  Widget build(BuildContext context) {
    if (cartItems.contains(product)) {
      int idx = cartItems.indexOf(product);
      cartItemBlocs.removeAt(idx);
      cartItemBlocs.insert(idx, detailPageBloc);
    }
    return InkWell(
      child: Container(
        width: length.isEven ? screenWidth * 0.4 : screenWidth * 0.333,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: length.isEven ? screenWidth * 0.4 : screenWidth * 0.333,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    width: length.isEven
                        ? screenWidth * 0.4 * (8 / 9)
                        : screenWidth * 0.333 * (8 / 9),
                    height: length.isEven
                        ? screenWidth * 0.4
                        : screenWidth * 0.333,
                    decoration: BoxDecoration(
                      color: productitembackgroundcolor,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Image(
                      image: NetworkImage(product.imageUrl),
                      fit: BoxFit.contain,
                    ),
                  ),

                  BlocBuilder<DetailPageBloc, DetailPageState>(
                    bloc: detailPageBloc,
                    builder: (context, state) {
                      return Positioned(
                        left: cartItems.isEmpty
                            ? length.isEven
                                  ? screenWidth * 0.195
                                  : screenWidth * 0.17
                            : length.isEven
                            ? screenWidth * 0.175
                            : screenWidth * 0.14,
                        child: GlobalAddToCartWidget(
                          product: product,
                          length: length,
                          addToCart: () {
                            detailPageBloc.add(
                              AddToCartButtonClickedEvent(
                                product: product,
                                detailPageBloc: detailPageBloc,
                              ),
                            );
                            cartBloc.add(AddtoCartEvent());
                          },
                          removeFromCart: () {
                            detailPageBloc.add(
                              RemoveFromCartButtonClickedEvent(
                                product: product,
                              ),
                            );
                            cartBloc.add(RemovefromCartEvent());
                          },
                        ),
                      );
                    },
                  ),

                  if (length.isEven) ...[
                    Positioned(
                      right: screenWidth * 0.33,
                      bottom: screenWidth * 0.038,
                      child: Container(
                        width: screenWidth * 0.03,
                        height: screenWidth * 0.03,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: productitembackgroundcolor,
                          borderRadius: BorderRadius.circular(1),
                          border: Border.all(
                            color: productitemgreencolor,
                            width: 1.2,
                          ),
                        ),
                        child: CircleAvatar(
                          backgroundColor: productitemgreencolor,
                          radius: 2.5,
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),

            SizedBox(
              width: length.isEven
                  ? screenWidth * 0.4 * 8 / 9
                  : screenWidth * 0.333 * 8 / 9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.01,
                        ),
                        decoration: BoxDecoration(
                          color: productitembackgroundcolor,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          product.weight,
                          style: TextStyle(
                            fontSize: 9,
                            color: productitemtagcolor,
                            fontWeight: FontWeight.bold,
                            fontFamily: font,
                            letterSpacing: -0.1,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.01,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.01,
                        ),
                        decoration: BoxDecoration(
                          color: productitembackgroundcolor,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          "tag",
                          style: TextStyle(
                            fontSize: 9,
                            color: productitemtagcolor,
                            fontWeight: FontWeight.bold,
                            fontFamily: font,
                            letterSpacing: -0.1,
                          ),
                        ),
                      ),
                    ],
                  ),

                  Text(
                    product.name,
                    style: TextStyle(
                      fontSize: 12.5,
                      color: darkblack,
                      fontFamily: font,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),

                  GlobalRatingConuntRowWidget(
                    rating: product.rating,
                    count: product.ratingCount,
                  ),

                  Text(
                    "10% OFF",
                    style: TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      fontFamily: font,
                      color: productitemdiscountcolor,
                      height: 2.5,
                    ),
                  ),

                  RichText(
                    text: TextSpan(
                      text: "₹${product.price}",
                      style: TextStyle(
                        fontFamily: font,
                        fontWeight: FontWeight.bold,
                        color: darkblack,
                      ),
                      children: [
                        TextSpan(
                          text: " MRP ",
                          style: TextStyle(
                            color: productitemratingcountcolor,
                            fontWeight: FontWeight.normal,
                            fontFamily: font,
                            fontSize: 11,
                          ),
                        ),
                        TextSpan(
                          text:
                              "₹${product.price + (0.1 * product.price).toInt()}",
                          style: TextStyle(
                            color: productitemratingcountcolor,
                            fontSize: 11,
                            decoration: TextDecoration.lineThrough,
                            fontWeight: FontWeight.normal,
                            fontFamily: font,
                            decorationColor: productitemratingcountcolor,
                            decorationThickness: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
