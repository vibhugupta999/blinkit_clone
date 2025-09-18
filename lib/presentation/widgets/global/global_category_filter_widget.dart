import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:flutter/material.dart';

class GlobalCategoryFilterWidget extends StatelessWidget {
  const GlobalCategoryFilterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * 0.815,
      height: screenWidth * 0.14,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            offset: Offset(0, 0),
            color: Colors.black26,
          ),
        ],
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(
              vertical: 6,
              horizontal: 4,
            ),
            padding: EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              border: Border.all(
                color: filterbordercolor,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: index == 1 || index == 2 || index == 0
                  ? Row(
                      children: [
                        Text(
                          "Filters",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: font,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          String.fromCharCode(
                            Icons.arrow_drop_down.codePoint,
                          ),
                          style: TextStyle(
                            fontFamily:
                                Icons.arrow_drop_down.fontFamily,
                            fontSize: 30,
                            color: Color(0xff32363c),
                          ),
                        ),
                      ],
                    )
                  : Text(
                      "Filters",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: font,
                        fontSize: 13,
                      ),
                    ),
            ),
          );
        },
      ),
    );
  }
}