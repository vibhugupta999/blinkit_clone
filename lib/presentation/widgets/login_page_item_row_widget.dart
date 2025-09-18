import 'dart:async';
import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:blinkit_clone/presentation/widgets/login_page_item_widget.dart';
import 'package:flutter/material.dart';

class LoginPageItemRowWidget extends StatefulWidget {
  final NetworkImage networkImage;
  final int count;
  const LoginPageItemRowWidget({
    super.key,
    required this.count,
    required this.networkImage,
  });

  @override
  State<LoginPageItemRowWidget> createState() => _LoginPageItemRowWidgetState();
}

class _LoginPageItemRowWidgetState extends State<LoginPageItemRowWidget> {
  final ScrollController _scrollController = ScrollController();
  final double _scrollspeed = 2;
  Timer? _timer;
  @override
  void initState() {
    super.initState();
    _startScrolling();
  }

  void _startScrolling() {
    _timer = Timer.periodic(Duration(milliseconds: 30), (timer) {
      if (_scrollController.hasClients) {
        double newOffset = _scrollController.offset + (_scrollspeed * 0.3);
        if (newOffset > _scrollController.position.maxScrollExtent) {
          _scrollController.jumpTo(0);
        } else {
          _scrollController.jumpTo(newOffset);
        }
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    if (_timer != null) {
      _timer!.cancel();
    }
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenWidth,
      height: screenHeight / 7.5,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 15,
        controller: _scrollController,
        itemBuilder: (_, index) {
          return Padding(
            padding: widget.count.isEven && index == 0
                ? EdgeInsets.only(left: screenWidth / 5, right: 6)
                : EdgeInsets.symmetric(horizontal: 6),
            child: LoginPageItemWidget(networkImage: widget.networkImage),
          );
        },
      ),
    );
  }
}
