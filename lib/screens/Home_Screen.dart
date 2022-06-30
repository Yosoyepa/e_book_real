import 'package:e_book_real/screens/ConfigurationPerfil.dart';
import 'package:e_book_real/screens/Login_Screen.dart';
import 'package:e_book_real/screens/Registration_Screen.dart';
import 'package:e_book_real/screens/home/exchange_screnn.dart';
import 'package:flutter/material.dart';
import 'package:e_book_real/screens/ConfigurationPerfil.dart';
import 'package:e_book_real/screens/shop_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/Fondo.png"), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
            child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                child: Card(
                    child: Image.asset(
                  "assets/pngegg.png",
                  width: 150,
                  fit: BoxFit.contain,
                )),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ConfigurationPerfil()));
                },
              ),
              Text(
                "Welcome Back",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                //appbar
                height: 5,
              ),
              Text("User",
                  style: TextStyle(
                      color: Colors.black54, fontWeight: FontWeight.w500)),
              GestureDetector(
                child: Card(
                    child: Image.asset(
                  "assets/a.png",
                  fit: BoxFit.contain,
                )),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Shop_Screen()));
                },
              ),
              GestureDetector(
                child: Card(
                    child: Image.asset(
                  "assets/b.png",
                  fit: BoxFit.contain,
                )),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => BookScreen()));
                },
              ),
              GestureDetector(
                child: Card(
                    child: Image.asset(
                  "assets/c.png",
                  fit: BoxFit.contain,
                )),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
              ),
              SizedBox(
                height: 50,
              ),
              ActionChip(
                  label: Text("LogOut"),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  }),
            ],
          ),
        )),
      ),
    );
  }
}
