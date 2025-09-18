import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:flutter/material.dart';

class GlobalSeeAllButton extends StatelessWidget {
  final bool isCategory;
  final VoidCallback onPressed;

  const GlobalSeeAllButton({
    super.key,
    required this.onPressed,
    required this.isCategory,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isCategory
          ? const EdgeInsets.only(left: 15, right: 15, bottom: 20)
          : const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          enableFeedback: true,
          splashFactory: NoSplash.splashFactory,
          foregroundColor: selectedsubcategoryindicator,
          backgroundColor: isCategory ? profileiconbackground : Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: isCategory ? 1.5 : 1,
              color: viewcarticongreencolor,
            ),
            borderRadius: BorderRadiusGeometry.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(isCategory ? "See all Categories" : "See all Products",style: TextStyle(fontFamily: font),),
            Icon(Icons.arrow_right_outlined, size: 22),
          ],
        ),
      ),
    );
  }
}
