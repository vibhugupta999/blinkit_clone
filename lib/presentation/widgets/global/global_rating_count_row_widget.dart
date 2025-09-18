import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:flutter/material.dart';

class GlobalRatingConuntRowWidget extends StatelessWidget {
  final double rating;
  final int count;
  const GlobalRatingConuntRowWidget({
    super.key,
    required this.rating,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          width: screenWidth * 0.22 * (8 / 9),
          height: screenWidth * 0.04,
          child: Builder(
            builder: (context) {
              bool halfadded = false;
              return ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  IconData icon;
                  if (rating.toInt() >= index + 1) {
                    icon = Icons.star_rounded;
                  } else if (!halfadded && (rating - rating.toInt()) != 0) {
                    icon = Icons.star_half_rounded;
                    halfadded = true;
                  } else {
                    icon = Icons.star_outline_rounded;
                  }
                  return SizedBox(
                    width: 14,
                    height: 16,
                    child: Icon(icon, size: 15, color: productstarratingcolor),
                  );
                },
              );
            },
          ),
        ),
        Text(
          "($count)",
          style: TextStyle(
            color: productitemratingcountcolor,
            fontSize: 9,
            fontFamily: font,
            letterSpacing: -0.2,
          ),
        ),
      ],
    );
  }
}
