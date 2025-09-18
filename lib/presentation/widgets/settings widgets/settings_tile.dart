// ignore_for_file: use_build_context_synchronously

import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:blinkit_clone/features/auth/auth_services.dart';
import 'package:blinkit_clone/presentation/widgets/confirmation_dialogue.dart';
import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  final String title;
  final IconData leadingIcon;
  final IconData trailingIcon;
  const SettingsTile({
    super.key,
    required this.title,
    required this.leadingIcon,
    required this.trailingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: title == "Log out"
          ? () {
              showDialog(
                context: context,
                builder: (context) => ConfirmationDialogue(
                  userAddress: null,
                  text: "Are you sure you want to Log out?",
                  onTapNO: () {
                    Navigator.pop(context);
                  },
                  onTapYES: () async {
                    await AuthServices.logout();
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                ),
              );
            }
          : () {},
      splashFactory: NoSplash.splashFactory,
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 10),
        minTileHeight: screenHeight / 20,
        leading: CircleAvatar(
          radius: 16,
          backgroundColor: profileiconbackground,
          child: Icon(leadingIcon, color: profileicon, size: 22),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontFamily: font,
            fontSize: 15,
            color: darkblack,
            letterSpacing: 0,
          ),
        ),
        trailing: Icon(trailingIcon, color: profilepagearrow, size: 16),
      ),
    );
  }
}
