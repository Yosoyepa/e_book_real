import 'package:e_book_real/screens/components/body.dart';
import 'package:flutter/material.dart';
import 'package:e_book_real/screens/Home_Screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:e_book_real/constants.dart';

// ignore: camel_case_types
class Shop_Screen extends StatefulWidget {
  const Shop_Screen({Key? key}) : super(key: key);

  @override
  State<Shop_Screen> createState() => _Shop_ScreenState();
}

// ignore: camel_case_types
class _Shop_ScreenState extends State<Shop_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomeScreen()));
        },
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        // ignore: prefer_const_constructors
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
