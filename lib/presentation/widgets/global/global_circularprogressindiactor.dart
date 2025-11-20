

import 'package:flutter/material.dart';

import '../../../data/constants/ui_consts.dart';

class GlobalCircularProgressIndicator extends StatelessWidget {
  const GlobalCircularProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: homepagegradientfirstcolor,
      strokeWidth: 3.6,
      constraints: BoxConstraints(minHeight: 24, minWidth: 24),
      strokeCap: StrokeCap.round,
    );
  }
}
