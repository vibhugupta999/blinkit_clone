// ignore_for_file: must_be_immutable

import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:blinkit_clone/data/data_sources/data_sources.dart';
import 'package:blinkit_clone/data/models/user_address.dart';
import 'package:blinkit_clone/presentation/bloc/address%20bloc/address_bloc.dart';
import 'package:blinkit_clone/presentation/widgets/confirmation_dialogue.dart';
import 'package:blinkit_clone/presentation/widgets/show_add_address_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddressEditDeleteBottomSheetWidget extends StatelessWidget {
  AddressEditDeleteBottomSheetWidget({
    super.key,
    required this.userAddress,
    required this.index,
    required this.controller,
  });

  final UserAddress userAddress;
  final int index;
  AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Select option",
            style: TextStyle(
              fontFamily: font,
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: darkblack,
              height: 2,
            ),
          ),
          ListTile(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return ConfirmationDialogue(
                    userAddress: userAddress,
                    text: "Are you sure you want to delete your address ?",
                    onTapNO: () {
                      Navigator.pop(context);
                    },
                    onTapYES: () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                      addressBloc.add(
                        DeleteAddressEvent(userAddress: userAddress),
                      );
                    },
                  );
                },
              );
            },
            tileColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.vertical(
                top: Radius.circular(15),
              ),
            ),
            leading: Icon(
              FontAwesomeIcons.trashCan,
              color: profileicon,
              size: 16,
            ),
            title: Text(
              "Delete address",
              style: TextStyle(
                fontFamily: font,
                color: darkblack,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              color: profilepagearrow,
              size: 16,
            ),
          ),
          SizedBox(height: 2),
          ListTile(
            onTap: () {
              addressBloc.add(EditAddressEvent(userAddress: userAddress));
              Navigator.pop(context);
              showAddAddressBottomSheet(
                context,
                true,
                userAddress,
                index,
                controller,
              );
            },
            tileColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.vertical(
                bottom: Radius.circular(15),
              ),
            ),
            leading: Icon(
              Icons.mode_edit_outline_outlined,
              color: profileicon,
              size: 18,
            ),
            title: Text(
              "Edit address",
              style: TextStyle(
                fontFamily: font,
                color: darkblack,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              color: profilepagearrow,
              size: 16,
            ),
          ),
        ],
      ),
    );
  }
}
