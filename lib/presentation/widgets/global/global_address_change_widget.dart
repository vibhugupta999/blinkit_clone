import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:blinkit_clone/data/data_sources/data_sources.dart';
import 'package:blinkit_clone/data/models/user_address.dart';
import 'package:blinkit_clone/presentation/bloc/address%20bloc/address_bloc.dart';
import 'package:blinkit_clone/presentation/widgets/show_address_list_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GlobalAddressChangeWidget extends StatefulWidget {
  const GlobalAddressChangeWidget({super.key});

  @override
  State<GlobalAddressChangeWidget> createState() =>
      _GlobalAddressChangeWidgetState();
}

class _GlobalAddressChangeWidgetState extends State<GlobalAddressChangeWidget>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
      reverseDuration: Duration(milliseconds: 250),
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        addressBloc.add(GetAddressesEvent());
        showAddressListBottomSheet(context, _controller);
      },
      child: BlocBuilder<AddressBloc, AddressState>(
        bloc: selectAddressBloc,
        builder: (context, state) {
          if (state.runtimeType == SelectedAddressState && userAddresses.isNotEmpty) {
            final st = state as SelectedAddressState;
            return Row(
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: screenWidth / 1.8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 18),
                        width: screenWidth / 2,
                        child: RichText(
                          maxLines: 1,
                          textAlign: TextAlign.left,
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(
                            text: "${st.userAddress.tag} - ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              fontFamily: font,
                              color: homepagetitlecolor,
                            ),
                            children: [
                              TextSpan(
                                text:
                                    "${st.userAddress.name} ${st.userAddress.buildingName}",
                                style: TextStyle(
                                  fontFamily: font,
                                  fontWeight: FontWeight.w100,
                                  color: Color(0xff4d4633),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        size: 18,
                        color: Color(0xff32363c),
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Text(
                    "Select Address",
                    style: TextStyle(
                      fontFamily: font,
                      fontWeight: FontWeight.w100,
                      color: Color(0xff4d4633),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
