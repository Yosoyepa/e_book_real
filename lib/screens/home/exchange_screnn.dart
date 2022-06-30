import 'dart:ui';

import 'package:e_book_real/colors.dart';
import 'package:e_book_real/constants.dart';
import 'package:e_book_real/screens/detail/detailscreen.dart';
import 'package:e_book_real/screens/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'widgets/category_card.dart';
import 'widgets/custom_appbar.dart';
import 'widgets/product_card.dart';

class BookScreen extends StatefulWidget {
  const BookScreen({Key? key}) : super(key: key);

  @override
  State<BookScreen> createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kWhiteClr,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/Fondo.png"),
                          fit: BoxFit.cover)),
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // appbar
                          const CustomAppbar(),
                          const SizedBox(
                            height: 20,
                          ),
                          //intro
                          const Text(
                            "Find the best\nbooks for you",
                            style: TextStyle(
                              color: Color.fromARGB(255, 57, 76, 107),
                              fontSize: 35,
                              letterSpacing: 2.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          //searchbar
                          TextFormField(
                            style: const TextStyle(
                              color: Color.fromARGB(255, 57, 76, 107),
                            ),
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "search",
                              hintStyle: const TextStyle(
                                color: Color.fromARGB(255, 57, 76, 107),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          //category
                          Container(
                            height: 45,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Categorycard(
                                  active: true,
                                  title: 'For All',
                                  press: () {},
                                ),
                                Categorycard(
                                  active: false,
                                  title: 'For Students',
                                  press: () {},
                                ),
                                Categorycard(
                                  active: false,
                                  title: 'For Teachers',
                                  press: () {},
                                ),
                                Categorycard(
                                  active: false,
                                  title: 'For Professionals',
                                  press: () {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: _size.height * 0.45,
                    ),
                    Container(
                      width: _size.width,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 212, 230, 245),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Hot Topic",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                              ),
                            ),

                            //now we will create model of our products

                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: kDefaultPaddin / 4),
                              child: AlignedGridView.count(
                                shrinkWrap: true,
                                physics: ScrollPhysics(),
                                itemCount: productinfo.length,
                                crossAxisCount: 2,
                                crossAxisSpacing: 30,
                                mainAxisSpacing: 5,
                                itemBuilder: (context, index) => ProductCard(
                                    product: productinfo[index],
                                    press: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Detailscreen(
                                            product: productinfo[index],
                                          ),
                                        ),
                                      );
                                    }),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

// now we will build detail screen