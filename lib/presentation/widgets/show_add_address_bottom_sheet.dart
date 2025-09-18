import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:blinkit_clone/data/data_sources/data_sources.dart';
import 'package:blinkit_clone/data/models/user_address.dart';
import 'package:blinkit_clone/presentation/bloc/address%20bloc/address_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icon_decoration/icon_decoration.dart';

final buildingNameKey = GlobalKey<FormState>();
final areLocalityKey = GlobalKey<FormState>();
final nameKey = GlobalKey<FormState>();
final pinCodeKey = GlobalKey<FormState>();

Future<void> showAddAddressBottomSheet(
  BuildContext context,
  bool iseditMode,
  UserAddress? useraddress,
  int index,
  AnimationController controller,
) {
  tagSelectedIndex = iseditMode && useraddress != null
      ? switch (useraddress.tag) {
          "Home" => 1,
          "Work" => 2,
          _ => 3,
        }
      : 3;
  return showModalBottomSheet(
    isDismissible: false,
    backgroundColor: Color(0xfff4f6fb),
    isScrollControlled: true,

    // sheetAnimationStyle: AnimationStyle(
    //   curve: Curves.fastEaseInToSlowEaseOut,
    //   duration: Duration(milliseconds: 200),
    //   reverseCurve: Curves.fastOutSlowIn,
    //   reverseDuration: Duration(milliseconds: 150),
    // ),
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadiusGeometry.circular(12),
    ),

    builder: (context) {
      return SlideTransition(
        position: Tween<Offset>(begin: Offset(0, 0.2), end: Offset.zero)
            .animate(
              CurvedAnimation(
                parent: controller,
                curve: Curves.easeOutCubic,
                reverseCurve: Curves.easeInCubic,
              ),
            ),
        child: FadeTransition(
          opacity: CurvedAnimation(parent: controller, curve: Curves.easeInOut),
          child: AnimatedPadding(
            duration: Duration(milliseconds: 250),
            curve: Curves.fastOutSlowIn,
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Container(
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Enter complete address",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: darkblack,
                          fontFamily: font,
                          fontSize: 16,
                          height: 2.5,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          tagSelectedIndex = 3;
                          Navigator.pop(context);
                          clearControllers();
                        },
                        child: Icon(Icons.close_rounded),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight / 2.5,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BlocBuilder<AddressBloc, AddressState>(
                            bloc: addressBloc,
                            builder: (context, state) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Save as: ",
                                    style: TextStyle(
                                      fontFamily: font,
                                      color: lightblack,
                                      fontSize: 12,
                                    ),
                                  ),
                                  AddressTagWidget(text: "Home", index: 1),
                                  AddressTagWidget(text: "Work", index: 2),
                                  AddressTagWidget(text: "Others", index: 3),
                                ],
                              );
                            },
                          ),
                          TextFormWidget(
                            text: "Flat / House no / Building name *",
                            controller: buildingNamecontroller,
                            formkey: buildingNameKey,
                          ),
                          TextFormWidget(
                            text: "Floor(optional)",
                            controller: floorcontroller,
                          ),
                          TextFormWidget(
                            text: "Area / Sector / Locality *",
                            controller: areaLocalitycontroller,
                            formkey: areLocalityKey,
                          ),
                          TextFormWidget(
                            text: "Pincode",
                            controller: pinCodecontroller,
                            formkey: pinCodeKey,
                            onlyDigits: true,
                          ),
                          TextFormWidget(
                            text: "Nearby landmark (optional)",
                            controller: landmarkcontroller,
                          ),
                          Text(
                            "Enter your details for seamless delivery experience",
                            style: TextStyle(
                              fontFamily: font,
                              color: lightblack,
                              fontSize: 12,
                              letterSpacing: 0,
                            ),
                          ),
                          TextFormWidget(
                            text: "Your name *",
                            controller: namecontroller,
                            formkey: nameKey,
                          ),
                          TextFormWidget(
                            text: "Your phone number (optional)",
                            controller: phonecontroller,
                            onlyDigits: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Save the address and pop context
                      if (buildingNameKey.currentState!.validate() &&
                          areLocalityKey.currentState!.validate() &&
                          pinCodeKey.currentState!.validate() &&
                          nameKey.currentState!.validate()) {
                        addressBloc.add(
                          SaveAddressEvent(
                            userAddress: iseditMode ? useraddress : null,
                            buildingName: buildingNamecontroller.text
                                .toString()
                                .trim(),
                            floor: floorcontroller.text.toString().trim(),
                            areaLocality: areaLocalitycontroller.text
                                .toString()
                                .trim(),
                            landmark: landmarkcontroller.text.toString().trim(),
                            name: namecontroller.text.toString().trim(),
                            phonenumber: phonecontroller.text.isNotEmpty
                                ? phonecontroller.text.toString().trim()
                                : phone,
                            tag: switch (tagSelectedIndex) {
                              1 => "Home",
                              2 => "Work",
                              _ => "Others",
                            },
                            pinCode: pinCodecontroller.text.toString(),
                            index: iseditMode ? index : -1,
                          ),
                        );
                        tagSelectedIndex = 3;
                        clearControllers();
                        Navigator.pop(context);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size.fromWidth(
                        MediaQuery.of(context).size.width,
                      ),
                      padding: EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(15),
                      ),
                      backgroundColor: logincontinueenabled,
                      foregroundColor: Colors.white,
                    ),
                    child: Text(
                      "Save Address",
                      style: TextStyle(fontFamily: font, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}

class AddressTagWidget extends StatelessWidget {
  final String text;
  final int index;
  const AddressTagWidget({super.key, required this.text, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        addressBloc.add(TagSelectedEvent(index: index));
      },
      child: Container(
        width: screenWidth / 5,
        height: screenWidth / 12,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: index == tagSelectedIndex
              ? selectedsubcategoryitembackground
              : null,
          border: Border.all(
            color: index == tagSelectedIndex
                ? viewcarticongreencolor
                : darkblack,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DecoratedIcon(
              icon: Icon(
                tagIconMap[text],
                color: loginblinkitlogobackground,
                size: text == "Home" ? 11 : 16,
              ),
              decoration: IconDecoration(border: IconBorder(color: darkblack)),
            ),
            Text(
              text,
              style: TextStyle(
                fontFamily: font,
                fontSize: 12,
                letterSpacing: 0,
                color: darkblack,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextFormWidget extends StatefulWidget {
  const TextFormWidget({
    super.key,
    required this.text,
    required this.controller,
    this.formkey,
    this.onlyDigits = false,
  });
  final String text;
  final TextEditingController controller;
  final GlobalKey<FormState>? formkey;
  final bool? onlyDigits;

  @override
  State<TextFormWidget> createState() => _TextFormWidgetState();
}

class _TextFormWidgetState extends State<TextFormWidget> {
  final FocusNode _focusNode = FocusNode();
  bool _focused = false;
  @override
  void initState() {
    _focusNode.addListener(() {
      _focused = _focusNode.hasFocus;
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: SizedBox(
        child: Form(
          key: widget.formkey,
          child: TextFormField(
            controller: widget.controller,
            cursorErrorColor: darkblack,
            cursorColor: darkblack,
            maxLines: 3,
            minLines: 1,
            style: TextStyle(fontFamily: font, color: darkblack, fontSize: 15),
            focusNode: _focusNode,
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (_) {
              FocusScope.of(context).requestFocus();
            },

            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return "this field is required";
              } else if (widget.text == "Pincode" && value.length < 6) {
                return "Enter a valid pincode";
              }
              return null;
            },
            keyboardType: widget.onlyDigits!
                ? TextInputType.number
                : TextInputType.text,
            inputFormatters: widget.onlyDigits!
                ? [
                    FilteringTextInputFormatter.digitsOnly,
                    FilteringTextInputFormatter.deny(RegExp(r'\s')),
                  ]
                : [],
            decoration: InputDecoration(
              labelText: widget.text,
              hintText: _focused ? "" : widget.text,
              labelStyle: TextStyle(
                color: lightblack,
                fontFamily: font,
                fontSize: 14,
              ),
              errorStyle: TextStyle(fontFamily: font),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade900, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade500, width: 1),
                borderRadius: BorderRadius.circular(12),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade500, width: 1),
                borderRadius: BorderRadius.circular(12),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade900, width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
