import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:testing_food_app/Model/Connstant.dart';
import 'package:testing_food_app/Pages/Home/MainScreen.dart';

import 'Api.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();
    var _emailController = TextEditingController();
    var _passwordController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
              ),
              ClipOval(
                  child: Image.asset(
                "assets/images/d7.png",
              )),
              SizedBox(
                height: 10,
              ),
              Text(
                "Welcome Login Page",
                style: TextStyle(
                    fontSize: 25, fontWeight: FontWeight.bold, color: purple),
              ),
              Text(
                "Login here this page!",
                style: TextStyle(
                    fontSize: 15, fontWeight: FontWeight.bold, color: purple),
              ),
              SizedBox(
                height: 10,
              ),
              Form(
                  key: _formkey,
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _emailController,
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              labelText: "email",
                              hintText: "Enter your email",
                              border: OutlineInputBorder()),
                          validator: ((value) =>
                              value != null && !EmailValidator.validate(value)
                                  ? 'Enter a valid email'
                                  : null),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: _passwordController,
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.password),
                              labelText: "password",
                              hintText: "Enter your password",
                              border: OutlineInputBorder(),
                              suffixIcon: IconButton(
                                  onPressed: null,
                                  icon: Icon(Icons.remove_red_eye))),
                          validator: (value) {
                            if (value != null && value.length <= 10) {
                              return "Enter 10 charcter";
                            }
                          },
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: Text("Forget Password?"),
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(),
                                  foregroundColor: white,
                                  backgroundColor: purple,
                                  side: BorderSide(color: black),
                                  padding: EdgeInsets.symmetric(vertical: 13)),
                              onPressed: () {
                                if (_formkey.currentState!.validate()) {
                                  var email = _emailController.text;

                                  var password = _passwordController.text;

                                  Api.userLogin(email, password);
                                }
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => MainScreen())));
                              },
                              child: Text("Login".toUpperCase())),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
