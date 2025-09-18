import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

final FlutterView _view = PlatformDispatcher.instance.views.first;

double screenWidth = _view.display.size.width / _view.display.devicePixelRatio;
double screenHeight =
    _view.display.size.height / _view.display.devicePixelRatio;
const String font = "Gotham";
const String fontbold = "Gotham Bold";

MaterialColor primaryMaterialColor = Colors.yellow;

// Main Colors
Color darkblack = const Color(0xff363636);
Color lightblack = const Color(0xff5a6374);
Color itemwidgetbackground = const Color(0xffe9f9f9);

// Profile Page Colors
Color profilesubheading = const Color(0xff808080);
Color profileicon = const Color(0xff586375);
Color profileiconbackground = const Color(0xfff3f4f8);
Color profilepagearrow = const Color(0xffb0b4bf);
Color profilegreen = const Color(0xff378612);
Color profileaddbirthday = const Color(0xfffaefd1);

// Profile Page Logo Colors
Color blinkitlogo = const Color(0xffb5b5b5);
Color blinkitversion = const Color(0xffb0b3bf);

// Login Page Colors

Color loginloginorsignup = const Color(0xff586276);
Color loginmobilenumber = const Color(0xff5a6274);
Color logincontinuedisabled = const Color(0xff9197a7);
Color logincontinueenabled = const Color(0xff328616);
Color loginwithzomato = const Color(0xfff04f5f);
Color loginaccesyouraddress = const Color(0xff777c87);

// Login Page Logo Colors
Color loginblinkitlogobackground = const Color(0xfff7cb46);
Color loginblinkitlogoblack = const Color(0xfff7cb46);
Color loginblinkitlogogreen = const Color(0xff328616);

// Home Page Colors
Color homepagetitlecolor = const Color(0xff343536);
Color homepagegradientfirstcolor = const Color(0xfff8cd4b);
Color homepagegradientsecondcolor = const Color(0xfffbe5a9);
Color homepagescreenbackgroundcolor = const Color(0xfffbf8ed);

// Navigation Bar Colors
Color navigationbarselectediconfillcolor = const Color(0xffeecd5d);
Color navigationbarunselectediconfillcolor = const Color(0xffe3e3e3);

//Search Bar Colors
Color searchbarhinttextcolor = const Color(0xff575f6c);
Color searchbarprefixiconcolor = const Color(0xff232323);
Color searchbarsuffixiconcolor = const Color(0xff383838);
Color searchbarbordercolor = const Color(0xffd7d8d2);
Color searchbarsuffixlinecolor = const Color(0xffebeaf0);

// Product Item Colors
Color productitemgreencolor = const Color(0xff318616);
Color productitembackgroundcolor = const Color(0xfff8f8fc);
Color productitemtagcolor = const Color(0xff3f4b88);
Color productstarratingcolor = const Color(0xffe9be3a);
Color productitemratingcountcolor = const Color(0xff5f687d);
Color productitemdiscountcolor = const Color(0xff256fef);

Color filterbordercolor = const Color(0xffe6e9ef);
Color selectedsubcategoryindicator = const Color(0xff318616);
Color selectedsubcategoryitembackground = const Color(0xffecffec);
Color unselectedsubcategoryname = const Color(0xff5f697d);
Color viewcarticongreencolor = const Color(0xff327e1a);

Color tabbarbackground = const Color(0xfffbf8ed);
Color tabbarmiddlegradient = const Color(0xfffbf2d7);

Color electorniccategorybackground = const Color(0xfff0ecfd);
Color electronicitemwidgetbackground = const Color(0xfff0ecfd);
Color beautycategorybackground = const Color(0xffffe4ec);

Color addresstileiconbackground = const Color(0xfff8f8f8);
Color addresstileicon = const Color(0xfff7cb46);