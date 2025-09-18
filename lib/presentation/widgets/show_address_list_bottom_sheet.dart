import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:blinkit_clone/data/data_sources/data_sources.dart';
import 'package:blinkit_clone/data/models/user_address.dart';
import 'package:blinkit_clone/presentation/bloc/address%20bloc/address_bloc.dart';
import 'package:blinkit_clone/presentation/widgets/address_tile.dart';
import 'package:blinkit_clone/presentation/widgets/show_add_address_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Future<void> showAddressListBottomSheet(
  BuildContext context,
  AnimationController controller,
) {
  return showModalBottomSheet(
    // sheetAnimationStyle: AnimationStyle(
    //   curve: Curves.fastEaseInToSlowEaseOut,
    //   duration: Duration(milliseconds: 200),
    //   reverseCurve: Curves.fastOutSlowIn,
    //   reverseDuration: Duration(milliseconds: 150),
    // ),
    transitionAnimationController: controller,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadiusGeometry.circular(20),
    ),
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) => SlideTransition(
      position: Tween<Offset>(begin: Offset(0, 0.2), end: Offset.zero).animate(
        CurvedAnimation(
          parent: controller,
          curve: Curves.easeOutCubic,
          reverseCurve: Curves.easeInCubic,
        ),
      ),
      child: FadeTransition(
        opacity: CurvedAnimation(parent: controller, curve: Curves.easeInOut),
        child: SizedBox(
          height: screenHeight * 0.9,
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      width: screenWidth,
                      height: screenHeight * 0.06,
                      color: Colors.transparent,
                    ),
                    CircleAvatar(
                      backgroundColor: const Color.fromARGB(100, 0, 0, 0),
                      child: Icon(Icons.close_rounded, color: Colors.white),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: screenWidth,
                  decoration: BoxDecoration(
                    color: Color(0xfff4f6fb),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Select delivery location",
                          style: TextStyle(
                            height: 2.5,
                            fontFamily: font,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: SearchBar(
                            elevation: WidgetStatePropertyAll(5),
                            shadowColor: WidgetStatePropertyAll(Colors.black26),
                            backgroundColor: WidgetStatePropertyAll(
                              Colors.white,
                            ),
                            shape: WidgetStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.circular(15),
                              ),
                            ),
                            leading: Icon(
                              FontAwesomeIcons.magnifyingGlass,
                              size: 21,
                              color: searchbarprefixiconcolor,
                            ),
                            hintText: "Search for area, street name...",
                            hintStyle: WidgetStatePropertyAll(
                              TextStyle(
                                color: searchbarhinttextcolor,
                                fontSize: 14,
                                textBaseline: TextBaseline.ideographic,
                                fontFamily: font,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(15),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 20,
                                spreadRadius: -5,
                              ),
                            ],
                          ),
                          child: ListTile(
                            minTileHeight: screenHeight / 15,
                            contentPadding: EdgeInsets.all(10),
                            selected: false,
                            leading: Icon(
                              Icons.my_location_rounded,
                              color: profilegreen,
                            ),
                            title: Text(
                              "Use current location",
                              style: TextStyle(
                                color: viewcarticongreencolor,
                                fontFamily: font,
                              ),
                            ),
                            subtitle: Text(
                              "address",
                              style: TextStyle(
                                color: searchbarhinttextcolor,
                                fontFamily: font,
                                fontSize: 12,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: profilepagearrow,
                              size: 16,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.symmetric(
                              horizontal: BorderSide(
                                width: 1,
                                color: Color(0xfff4f6fb),
                              ),
                            ),
                            borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(15),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 15,
                                spreadRadius: -15,
                                offset: Offset(0, 8),
                              ),
                            ],
                          ),
                          child: InkWell(
                            onTap: () {
                              showAddAddressBottomSheet(
                                context,
                                false,
                                null,
                                -1,
                                controller
                              );
                            },
                            child: ListTile(
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              leading: Icon(
                                Icons.add,
                                color: viewcarticongreencolor,
                              ),
                              title: Text(
                                "Add new address",
                                style: TextStyle(
                                  color: viewcarticongreencolor,
                                  fontFamily: font,
                                ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: profilepagearrow,
                                size: 16,
                              ),
                            ),
                          ),
                        ),
                        BlocBuilder<AddressBloc, AddressState>(
                          bloc: addressBloc,
                          builder: (context, state) {
                            switch (state.runtimeType) {
                              case AddressesLoadingState:
                                return Center(
                                  child: CircularProgressIndicator(
                                    color: loginblinkitlogobackground,
                                    strokeWidth: 5,
                                    backgroundColor: darkblack,
                                    padding: EdgeInsets.all(20),
                                  ),
                                );
                              default:
                                return ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: userAddresses.length,
                                  itemBuilder: (context, index) {
                                    return AddressTile(
                                      userAddress: userAddresses[index],
                                      index: index, controller: controller,
                                    );
                                  },
                                );
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
