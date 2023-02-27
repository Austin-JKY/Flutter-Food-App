import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:testing_food_app/Pages/SingInPage/Login.dart';

import '../../Model/Connstant.dart';
import 'Api.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();
    var _nameController = TextEditingController();
    var _emailController = TextEditingController();
    var _phoneController = TextEditingController();
    var _passwordController = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            ClipOval(
                child: Image.asset(
              "assets/images/d7.png",
            )),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Welcome Register Page",
              style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold, color: purple),
            ),
            Text(
              "Register here this page!",
              style: TextStyle(
                  fontSize: 15, fontWeight: FontWeight.bold, color: purple),
            ),
            SizedBox(
              height: 10,
            ),
            Form(
                key: _formkey,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _nameController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.people),
                          labelText: "username",
                          hintText: "Enter your username",
                          border: OutlineInputBorder(),
                        ),
                        validator: ((value) {
                          if (value != null &&
                              !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                            return 'Enter corret username';
                          }
                        }),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _emailController,
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.email),
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
                        keyboardType: TextInputType.phone,
                        controller: _phoneController,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.phone_android_outlined),
                          labelText: "phone number",
                          hintText: "Enter your phone number",
                          border: OutlineInputBorder(),
                        ),
                        validator: ((value) {
                          if (value != null) {
                            return 'False your phone number';
                          }
                        }),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: true,
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
                      SizedBox(
                        height: 20,
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
                              var name = _nameController.text;
                              var password = _passwordController.text;
                              var phone = _phoneController.text;

                              Api.userRegister(name, email, phone, password);
                            }
                          },
                          child: Text(
                            "Register".toUpperCase(),
                          ),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      )),
    );
  }
}
