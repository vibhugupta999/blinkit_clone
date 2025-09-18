import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:flutter/material.dart';

class GlobalUnpackedProductItemWidget extends StatelessWidget {
  final String url;
  final VoidCallback onAddCartButtonPressed;
  const GlobalUnpackedProductItemWidget({
    super.key,
    required this.url,
    required this.onAddCartButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        splashColor: Colors.deepPurple,
        child: Container(
          width: screenWidth * 0.4,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Column(
            children: [
              SizedBox(
                width: screenWidth * 0.4,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      width: screenWidth * 0.4,
                      height: screenWidth * 0.4 * 10 / 9,
                      child: Image(image: NetworkImage(url), fit: BoxFit.cover),
                    ),
                    Positioned(
                      left: screenWidth * 0.195,
                      child: ElevatedButton(
                        onPressed: onAddCartButtonPressed,
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(
                            screenWidth * 0.2,
                            screenWidth * 0.2 / 5,
                          ),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(10),
                            side: BorderSide(color: productitemgreencolor),
                          ),
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
                    ),
                    Positioned(
                      right: screenWidth * 0.35,
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
                ),
              ),

              SizedBox(
                width: screenWidth * 0.4 * 8 / 9,
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
                            "1 l",
                            style: TextStyle(
                              fontSize: 9,
                              color: productitemtagcolor,
                              fontWeight: FontWeight.bold,
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
                            "Butterscotch",
                            style: TextStyle(
                              fontSize: 9,
                              color: productitemtagcolor,
                              fontWeight: FontWeight.bold,
                              letterSpacing: -0.1,
                            ),
                          ),
                        ),
                      ],
                    ),

                    Text(
                      "Cream Pot Butterscotch Frozen Dessert Tub",
                      style: TextStyle(fontSize: 12.5, color: darkblack),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: screenWidth * 0.22 * (8 / 9),
                          height: screenWidth * 0.04,
                          child: ListView.builder(
                            itemCount: 5,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return SizedBox(
                                width: 15,
                                height: 16,
                                child: Icon(
                                  Icons.star_rounded,
                                  size: 18,
                                  color: productstarratingcolor,
                                ),
                              );
                            },
                          ),
                        ),
                        Text(
                          "(6,222)",
                          style: TextStyle(
                            color: productitemratingcountcolor,
                            fontSize: 9,
                            letterSpacing: -0.2,
                          ),
                        ),
                      ],
                    ),

                    Text(
                      "10% OFF",
                      style: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                        color: productitemdiscountcolor,
                        height: 2.5,
                      ),
                    ),

                    RichText(
                      text: TextSpan(
                        text: "₹198 ",
                        style: TextStyle(
                          fontFamily: font,
                          fontWeight: FontWeight.bold,
                          color: darkblack,
                        ),
                        children: [
                          TextSpan(
                            text: "MRP ",
                            style: TextStyle(
                              color: productitemratingcountcolor,
                              fontWeight: FontWeight.normal,
                              fontSize: 11,
                            ),
                          ),
                          TextSpan(
                            text: "₹220",
                            style: TextStyle(
                              color: productitemratingcountcolor,
                              fontSize: 11,
                              decoration: TextDecoration.lineThrough,
                              fontWeight: FontWeight.w100,
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
      ),
    );
  }
}
