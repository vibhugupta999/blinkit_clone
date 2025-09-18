import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:blinkit_clone/presentation/widgets/global/global_search_bar_widget.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: homepagescreenbackgroundcolor,
        automaticallyImplyLeading: false,
        title: GlobalSearchBarWidget(
          enabled: true,
          focusNode: FocusNode(),
          isSearchPage: true,
        ),
      ),
    );
  }
}
