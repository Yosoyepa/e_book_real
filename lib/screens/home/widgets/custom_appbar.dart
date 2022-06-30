import 'package:e_book_real/colors.dart';
import 'package:e_book_real/screens/Home_Screen.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          child: const Icon(
            Icons.keyboard_return,
            color: Color.fromARGB(255, 57, 76, 107),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.shopping_bag_rounded,
              color: Color.fromARGB(255, 57, 76, 107),
            ),
          ),
        ),
      ],
    );
  }
}
