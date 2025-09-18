// ignore_for_file: use_build_context_synchronously

import 'package:blinkit_clone/data/constants/ui_consts.dart';
import 'package:blinkit_clone/data/data_sources/data_sources.dart';
import 'package:blinkit_clone/presentation/bloc/address%20bloc/address_bloc.dart';
import 'package:blinkit_clone/presentation/bloc/cart%20bloc/cart_bloc.dart';
import 'package:blinkit_clone/presentation/bloc/detail%20page%20bloc/detail_page_bloc.dart';
import 'package:blinkit_clone/presentation/widgets/global/global_add_to_cart_widget.dart';
import 'package:blinkit_clone/presentation/widgets/global/global_suggested_item_widget.dart';
import 'package:blinkit_clone/presentation/widgets/show_address_list_bottom_sheet.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icon_decoration/icon_decoration.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> with TickerProviderStateMixin {
  @override
  void initState() {
    _tapGestureRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.pop(context);
      };
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
      reverseDuration: Duration(milliseconds: 250),
    );
    super.initState();
  }

  late final TapGestureRecognizer _tapGestureRecognizer;

  late AnimationController _controller;
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        flexibleSpace: Container(color: Colors.white),
        title: Text(
          "Checkout",
          style: TextStyle(fontSize: 16, fontFamily: font),
        ),
        actions: [
          InkWell(
            child: Row(
              children: [
                Icon(
                  Icons.shopping_cart_outlined,
                  color: selectedsubcategoryindicator,
                  size: 15,
                ),
                Text(
                  "Share",
                  style: TextStyle(
                    fontFamily: font,
                    color: selectedsubcategoryindicator,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
        actionsPadding: EdgeInsets.symmetric(horizontal: 20),
        scrolledUnderElevation: 5,
        shadowColor: Colors.black,
        elevation: 3,
      ),
      backgroundColor: Color(0xfff4f6fb),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BlocBuilder<CartBloc, CartState>(
              bloc: cartBloc,
              builder: (context, state) {
                return cartItems.isEmpty
                    ? Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 15,
                        ),
                        padding: EdgeInsets.symmetric(vertical: 15),
                        constraints: BoxConstraints(
                          minHeight: 25,
                          minWidth: screenWidth,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        alignment: Alignment.center,
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: "Cart is Empty\n",
                            style: TextStyle(
                              fontSize: 16,
                              color: darkblack,
                              fontFamily: font,
                              height: 1.5,
                            ),
                            children: [
                              TextSpan(
                                text: "Add Items+",
                                recognizer: _tapGestureRecognizer,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: selectedsubcategoryindicator,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    : Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 15,
                        ),
                        constraints: BoxConstraints(
                          minHeight: 25,
                          minWidth: screenWidth,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              leading: Icon(
                                Icons.timelapse,
                                color: selectedsubcategoryindicator,
                              ),
                              title: Text(
                                "Delivery in 11 minutes",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: font,
                                ),
                              ),
                              subtitle: Text(
                                "Shipment of $qty item",
                                style: TextStyle(
                                  color: lightblack,
                                  fontSize: 11,
                                  fontFamily: font,
                                ),
                              ),
                              minTileHeight: 20,
                            ),
                            Container(
                              width: screenWidth,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xfff4f6fb),
                                  width: 1,
                                ),
                              ),
                            ),
                            SizedBox(
                              child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: cartItems.length,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    leading: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: Image(
                                        image: NetworkImage(
                                          cartItems[index].imageUrl,
                                        ),
                                      ),
                                    ),
                                    title: Text(
                                      cartItems[index].name,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontFamily: font),
                                    ),
                                    subtitle: Row(
                                      children: [
                                        Text(
                                          "wt: ${cartItems[index].weight} ",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: lightblack,
                                            fontFamily: font,
                                          ),
                                        ),
                                        Text(
                                          " qty: ${cartItemsQuantity[index]}",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: lightblack,
                                            fontFamily: font,
                                          ),
                                        ),
                                      ],
                                    ),
                                    trailing: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        SizedBox(
                                          height: 35,
                                          child: GlobalAddToCartWidget(
                                            addToCart: () {
                                              cartItemBlocs[index].add(
                                                AddToCartButtonClickedEvent(
                                                  detailPageBloc:
                                                      cartItemBlocs[index],
                                                  product: cartItems[index],
                                                ),
                                              );
                                              cartBloc.add(AddtoCartEvent());
                                            },
                                            product: cartItems[index],
                                            removeFromCart: () {
                                              cartItemBlocs[index].add(
                                                RemoveFromCartButtonClickedEvent(
                                                  product: cartItems[index],
                                                ),
                                              );
                                              cartBloc.add(
                                                RemovefromCartEvent(),
                                              );
                                            },
                                            length: 1,
                                          ),
                                        ),
                                        Text(
                                          "Rs ${cartItems[index].price * cartItemsQuantity[index]}",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            fontFamily: font,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      );
              },
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 0, vertical: 15),
              constraints: BoxConstraints(minHeight: 25, minWidth: screenWidth),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: GlobalSuggestedItemWidget(
                url:
                    "https://instamart-media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,h_600/owm6jrj3icaujc89gsf5",
                title: "You may also like",
                row: 3,
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              constraints: BoxConstraints(minHeight: 25, minWidth: screenWidth),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: Icon(
                  Icons.discount_rounded,
                  color: productitemdiscountcolor,
                ),
                title: Text(
                  "Use Coupons",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: font,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: lightblack,
                  size: 16,
                ),
              ),
            ),
            BlocBuilder<CartBloc, CartState>(
              bloc: cartBloc,
              builder: (context, state) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  constraints: BoxConstraints(
                    minHeight: 25,
                    minWidth: screenWidth,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "Bill details",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                            fontFamily: fontbold,
                            height: 3,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.description,
                                  color: lightblack,
                                  size: 18,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "Items total",
                                  style: TextStyle(
                                    color: lightblack,
                                    fontSize: 13,
                                    fontFamily: font,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Rs $itemsTotal",
                              style: TextStyle(
                                color: lightblack,
                                fontFamily: font,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  FontAwesomeIcons.bicycle,
                                  color: lightblack,
                                  size: 18,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "Delivery charge",
                                  style: TextStyle(
                                    color: lightblack,
                                    fontSize: 13,
                                    fontFamily: font,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Rs $getDeliveryFee",
                              style: TextStyle(
                                color: lightblack,
                                fontFamily: font,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.shopping_bag,
                                  color: lightblack,
                                  size: 18,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "Handling charge",
                                  style: TextStyle(
                                    color: lightblack,
                                    fontSize: 13,
                                    fontFamily: font,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Rs $handlingFee",
                              style: TextStyle(
                                color: lightblack,
                                fontFamily: font,
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (itemsTotal <= 99) ...[
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.add_shopping_cart_rounded,
                                    color: lightblack,
                                    size: 18,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "Small cart charge",
                                    style: TextStyle(
                                      color: lightblack,
                                      fontFamily: font,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Rs $smallCartCharge",
                                style: TextStyle(
                                  color: lightblack,
                                  fontFamily: font,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        width: screenWidth,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xfff4f6fb),
                            width: 1,
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          "Grand total",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: font,
                          ),
                        ),
                        trailing: Text(
                          "Rs $grandTotal",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            fontFamily: font,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              constraints: BoxConstraints(minHeight: 25, minWidth: screenWidth),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                leading: Icon(
                  Icons.discount_rounded,
                  color: productitemdiscountcolor,
                ),
                title: Text(
                  "Add GSTIN",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: font,
                    fontSize: 15,
                  ),
                ),
                subtitle: Text(
                  "Claim GST input credit upto 28% on your order",
                  style: TextStyle(
                    color: lightblack,
                    fontSize: 12,
                    fontFamily: font,
                    letterSpacing: -0.5,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: lightblack,
                  size: 16,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: BottomAppBar(
        padding: EdgeInsets.symmetric(horizontal: 8),
        height: screenHeight * 0.15,
        color: Colors.white,
        child: Column(
          children: [
            BlocBuilder<AddressBloc, AddressState>(
              bloc: selectAddressBloc,
              builder: (context, state) {
                late SelectedAddressState st;
                if (state.runtimeType == SelectedAddressState) {
                  st = state as SelectedAddressState;
                }
                return Column(
                  children: [
                    state.runtimeType == SelectedAddressState
                        ? ListTile(
                            tileColor: Colors.white,
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            minTileHeight: screenHeight * 0.075,
                            leading: DecoratedIcon(
                              icon: Icon(
                                tagIconMap[st.userAddress.tag],
                                color: addresstileicon,
                                size: st.userAddress.tag == "Home" ? 18 : 24,
                              ),
                              decoration: IconDecoration(
                                border: IconBorder(color: darkblack, width: 2),
                              ),
                            ),
                            title: Row(
                              children: [
                                Text(
                                  "Delivering to ",
                                  style: TextStyle(
                                    fontFamily: font,
                                    color: lightblack,
                                    fontSize: 16,
                                    letterSpacing: 0,
                                  ),
                                ),
                                Text(
                                  st.userAddress.tag,
                                  style: TextStyle(
                                    fontFamily: font,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0,
                                    color: darkblack,
                                  ),
                                ),
                              ],
                            ),
                            subtitle: Text(
                              st.userAddress.floor!.isEmpty
                                  ? st.userAddress.landmark!.isEmpty
                                        ? "${st.userAddress.name}, ${st.userAddress.buildingName}, ${st.userAddress.areaLocality}, ${st.userAddress.pinCode}"
                                        : "${st.userAddress.name}, ${st.userAddress.buildingName}, near ${st.userAddress.landmark}, ${st.userAddress.areaLocality}, ${st.userAddress.pinCode}"
                                  : st.userAddress.landmark!.isEmpty
                                  ? "${st.userAddress.name}, ${st.userAddress.buildingName}, ${st.userAddress.floor} floor, ${st.userAddress.areaLocality}, ${st.userAddress.pinCode}"
                                  : "${st.userAddress.name}, ${st.userAddress.buildingName}, ${st.userAddress.floor} floor, near ${st.userAddress.landmark}, ${st.userAddress.areaLocality}, ${st.userAddress.pinCode}",
                              style: TextStyle(
                                fontFamily: font,
                                color: lightblack,
                                letterSpacing: 0,
                                fontSize: 12,
                                fontWeight: FontWeight.w100,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            trailing: TextButton(
                              onPressed: () {
                                showAddressListBottomSheet(
                                  context,
                                  _controller,
                                );
                              },
                              child: Text(
                                "Change",
                                style: TextStyle(
                                  color: profilegreen,
                                  fontFamily: font,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          )
                        : ListTile(
                            tileColor: Colors.white,
                            contentPadding: EdgeInsets.symmetric(horizontal: 8),
                            minTileHeight: screenHeight * 0.075,
                            title: Text(
                              "Select address",
                              style: TextStyle(
                                fontFamily: font,
                                fontWeight: FontWeight.bold,
                                color: lightblack,
                              ),
                            ),
                          ),

                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        right: 15,
                        bottom: 0,
                      ),
                      child: BlocBuilder<CartBloc, CartState>(
                        bloc: cartBloc,
                        builder: (context, st) {
                          return ElevatedButton(
                            onPressed: cartItems.isEmpty || itemsTotal < 1
                                ? null
                                : state.runtimeType == SelectedAddressState
                                ? () async {
                                    showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                        title: Text(
                                          "Your order has been placed!!",
                                          style: TextStyle(
                                            color: darkblack,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: font,
                                            fontSize: 18,
                                            letterSpacing: 0,
                                          ),
                                        ),
                                      ),
                                    );

                                    await Future.delayed(
                                      Duration(milliseconds: 1000),
                                    );
                                    cartBloc.add(ClearCartEvent());
                                    Navigator.pop(context);
                                    Navigator.pop(context);
                                  }
                                : () {
                                    addressBloc.add(GetAddressesEvent());
                                    showAddressListBottomSheet(
                                      context,
                                      _controller,
                                    );
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
                              disabledBackgroundColor: logincontinuedisabled,
                            ),
                            child: Text(
                              state.runtimeType == SelectedAddressState
                                  ? "Place Order"
                                  : "Select Address",
                              style: TextStyle(fontFamily: font, fontSize: 16),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
