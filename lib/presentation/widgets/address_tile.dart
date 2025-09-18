import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:blinkit_clone/data/data_sources/data_sources.dart';
import 'package:blinkit_clone/data/models/user_address.dart';
import 'package:blinkit_clone/presentation/bloc/address%20bloc/address_bloc.dart';
import 'package:blinkit_clone/presentation/widgets/address_edit_delete_bottom_sheet_widget.dart';
import 'package:flutter/material.dart';
import 'package:icon_decoration/icon_decoration.dart';

// ignore: must_be_immutable
class AddressTile extends StatelessWidget {
  final UserAddress userAddress;
  final int index;
  AnimationController controller;
  AddressTile({
    super.key,
    required this.userAddress,
    required this.index,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: index == userAddresses.length - 1
          ? EdgeInsets.symmetric(vertical: 15)
          : EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 20, spreadRadius: -5),
        ],
      ),
      child: ListTile(
        onTap: () {
          selectAddressBloc.add(SelectedAddressEvent(userAddress: userAddress));
          Navigator.pop(context);
        },
        contentPadding: EdgeInsets.only(left: 6, right: 6, top: 8),
        leading: Container(
          width: screenWidth / 6,
          height: screenWidth / 6,
          decoration: BoxDecoration(
            color: addresstileiconbackground,
            borderRadius: BorderRadius.circular(15),
          ),
          child: DecoratedIcon(
            icon: Icon(
              tagIconMap[userAddress.tag],
              color: addresstileicon,
              size: userAddress.tag == "Home" ? 18 : 24,
            ),
            decoration: IconDecoration(
              border: IconBorder(color: darkblack, width: 2),
            ),
          ),
        ),
        title: Row(
          children: [
            Text(
              userAddress.tag,
              style: TextStyle(fontFamily: font, color: darkblack, height: 2),
            ),
          ],
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              userAddress.floor!.isEmpty
                  ? userAddress.landmark!.isEmpty
                        ? "${userAddress.name}, ${userAddress.buildingName}, ${userAddress.areaLocality}, ${userAddress.pinCode}"
                        : "${userAddress.name}, ${userAddress.buildingName}, near ${userAddress.landmark}, ${userAddress.areaLocality}, ${userAddress.pinCode}"
                  : userAddress.landmark!.isEmpty
                  ? "${userAddress.name}, ${userAddress.buildingName}, ${userAddress.floor} floor, ${userAddress.areaLocality}, ${userAddress.pinCode}"
                  : "${userAddress.name}, ${userAddress.buildingName}, ${userAddress.floor} floor, near ${userAddress.landmark}, ${userAddress.areaLocality}, ${userAddress.pinCode}",
              style: TextStyle(
                fontFamily: font,
                color: lightblack,
                letterSpacing: 0,
                fontSize: 12,
                fontWeight: FontWeight.w100,
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              "Phone number: ${userAddress.phonenumber}",
              style: TextStyle(
                fontFamily: font,
                fontSize: 12,
                color: lightblack,
                fontWeight: FontWeight.bold,
                height: 2,
              ),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      backgroundColor: Color(0xfff4f6fb),
                      context: context,
                      builder: (context) {
                        return AddressEditDeleteBottomSheetWidget(
                          userAddress: userAddress,
                          index: index,
                          controller: controller,
                        );
                      },
                    );
                  },
                  child: Container(
                    width: screenWidth / 15,
                    height: screenWidth / 15,
                    margin: EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Icon(
                      Icons.more_horiz,
                      size: 20,
                      color: profilegreen,
                    ),
                  ),
                ),
                SizedBox(width: screenWidth / 50),
                Container(
                  width: screenWidth / 15,
                  height: screenWidth / 15,
                  margin: EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Icon(
                    Icons.ios_share_rounded,
                    size: 18,
                    color: profilegreen,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
