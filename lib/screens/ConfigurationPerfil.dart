import 'package:flutter/material.dart';
import 'Home_Screen.dart';

class ConfigurationPerfil extends StatefulWidget {
  const ConfigurationPerfil({Key? key}) : super(key: key);

  @override
  State<ConfigurationPerfil> createState() => _ConfigurationPerfilState();
}

class _ConfigurationPerfilState extends State<ConfigurationPerfil> {
  // our form key

  final _formKey = GlobalKey<FormState>();

  //editing controller

  final first_name_controller = new TextEditingController();
  final adress_controller = new TextEditingController();
  final email_controller = new TextEditingController();
  final password_controller = new TextEditingController();
  final confirm_password_controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    //First Name field
    final firstnamefield = TextFormField(
      autofocus: false,
      controller: first_name_controller,
      keyboardType: TextInputType.name,
      //validator: () {} ,
      onSaved: (value) {
        first_name_controller.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Name",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );

    //adress field
    final adressfield = TextFormField(
      autofocus: false,
      controller: adress_controller,
      keyboardType: TextInputType.streetAddress,
      //validator: () {} ,
      onSaved: (value) {
        adress_controller.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.home),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Adress",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );

    //email field
    final emailField = TextFormField(
      autofocus: false,
      controller: email_controller,
      keyboardType: TextInputType.emailAddress,
      //validator: () {} ,
      onSaved: (value) {
        email_controller.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.punch_clock),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Age",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );

    //password field
    final passwordField = TextFormField(
      autofocus: false,
      controller: password_controller,
      obscureText: true,
      //validator: () {} ,
      onSaved: (value) {
        password_controller.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.question_answer),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Preferences",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );

    //confirm password
    final confirmpasswordfield = TextFormField(
      autofocus: false,
      controller: confirm_password_controller,
      obscureText: true,
      //validator: () {} ,
      onSaved: (value) {
        confirm_password_controller.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );

    //signup button
    final signupButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Color.fromARGB(255, 52, 76, 87),
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomeScreen()));
        },
        child: Text(
          "Confirm Changes",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/Fondo.png"),
                  fit: BoxFit.cover)),
          child: Center(
            child: SingleChildScrollView(
              child: Container(
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(36.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                            height: 150,
                            child: Image.asset(
                              "assets/icono.png",
                              fit: BoxFit.contain,
                            )),
                        firstnamefield,
                        SizedBox(height: 10),
                        adressfield,
                        SizedBox(height: 10),
                        emailField,
                        SizedBox(height: 10),
                        passwordField,
                        SizedBox(height: 10),
                        confirmpasswordfield,
                        SizedBox(height: 10),
                        signupButton,
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
