import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GlobalSearchBarWidget extends StatelessWidget {
  final bool? isSearchPage;
  final FocusNode? focusNode;
  final bool enabled;
  const GlobalSearchBarWidget({
    super.key,
    required this.enabled,
    this.focusNode,

    this.isSearchPage = false,
  });

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      enabled: enabled,
      focusNode: focusNode,
      constraints: BoxConstraints(
        maxWidth: screenWidth * 0.92,
        minHeight: screenHeight / 20,
      ),
      elevation: WidgetStatePropertyAll(0),
      backgroundColor: WidgetStatePropertyAll(Colors.white),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(15),
          side: BorderSide(color: searchbarbordercolor),
        ),
      ),
      leading: GestureDetector(
        onTap: !isSearchPage!
            ? () {}
            : () {
                Navigator.pop(context);
              },
        child: Icon(
          !isSearchPage!
              ? FontAwesomeIcons.magnifyingGlass
              : FontAwesomeIcons.arrowLeft,
          size: 21,
          color: searchbarprefixiconcolor,
        ),
      ),
      hintText: " Search for atta, dal, coke and more",
      hintStyle: WidgetStatePropertyAll(
        TextStyle(
          color: searchbarhinttextcolor,
          fontSize: 14,
          textBaseline: TextBaseline.ideographic,
          fontFamily: font,
        ),
      ),
      trailing: [
        Container(
          width: 1,
          height: screenWidth * 0.07,
          color: searchbarsuffixlinecolor,
          margin: EdgeInsets.only(right: 10),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(
            FontAwesomeIcons.microphone,
            color: searchbarsuffixiconcolor,
            size: 18,
          ),
        ),
      ],
    );
  }
}
