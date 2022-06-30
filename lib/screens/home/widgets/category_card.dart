import 'package:e_book_real/colors.dart';
import 'package:flutter/material.dart';

class Categorycard extends StatelessWidget {
  final String title;
  final VoidCallback press;
  final bool active;
  const Categorycard({
    Key? key,
    required this.title,
    required this.press,
    required this.active,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: press,
        child: Container(
          decoration: BoxDecoration(
              color: active == true
                  ? Color.fromARGB(255, 131, 236, 244)
                  : kPrimaryClr,
              borderRadius: BorderRadius.circular(100)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                color: active == true ? kBlackClr : kWhiteClr,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
