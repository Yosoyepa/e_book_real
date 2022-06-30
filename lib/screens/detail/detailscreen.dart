import 'package:e_book_real/colors.dart';
import 'package:e_book_real/screens/model/product_model.dart';
import 'package:flutter/material.dart';

class Detailscreen extends StatefulWidget {
  final Product product;
  const Detailscreen({Key? key, required this.product}) : super(key: key);

  @override
  State<Detailscreen> createState() => _DetailscreenState();
}

class _DetailscreenState extends State<Detailscreen> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kWhiteClr,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                if (count != 1) {
                  setState(() {
                    count--;
                  });
                }
              },
              child: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 57, 76, 107),
                child: Icon(Icons.remove),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            CircleAvatar(
              backgroundColor: kGreyClr,
              child: Text(
                "${count}",
                style: TextStyle(
                  fontSize: 18,
                  color: kBlackClr,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  count++;
                });
              },
              child: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 57, 76, 107),
                child: Icon(Icons.add),
              ),
            ),
            Spacer(),
            MaterialButton(
              color: Color.fromARGB(255, 57, 76, 107),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              height: 50,
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Add to cart",
                  style: TextStyle(
                    fontSize: 18,
                    color: kWhiteClr,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 350,
                  width: _size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(widget.product.image))),
                  child: SafeArea(
                      child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Icon(
                              Icons.arrow_back,
                              color: Color.fromARGB(255, 57, 76, 107),
                            ),
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
                            child: Icon(
                              Icons.favorite_outline,
                              color: Color.fromARGB(255, 57, 76, 107),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: _size.height * 0.5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 15,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  widget.product.name,
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "\$${widget.product.price}",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              widget.product.desc,
                              style: TextStyle(
                                color: Color.fromARGB(255, 57, 76, 107),
                                height: 1.5,
                                wordSpacing: 1.5,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 30,
                                ),
                              ],
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
