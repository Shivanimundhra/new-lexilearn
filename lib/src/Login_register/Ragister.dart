import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lexilearn/src/Login_register/login.dart';
import 'package:lexilearn/src/authentication/authentication.dart';
import 'package:lexilearn/src/home/home.dart';

class ragister extends StatefulWidget {
  const ragister({super.key});

  @override
  State<ragister> createState() => _ragisterState();
}

class _ragisterState extends State<ragister> {
  @override
    TextEditingController _email = TextEditingController();
   TextEditingController _password = TextEditingController();
   TextEditingController _number = TextEditingController();
   TextEditingController _name = TextEditingController();
   String? pass;
void ragister()async{
  String resr=await AuthMethods().signUpUser(
      email: _email.text,
      username: _name.text,
      password: _password.text,
      number: _number.text);
}
  // late String password;
  bool abc = true;
  bool def = true;
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(25.0),
            child: Center(
              child: Column(
                children: [
                  Image(
                    image: const AssetImage(
                        'assets/image/login_ragister_screen/login_ragister.png'),
                    height: size.height * 0.7 / 2.38,
                  ),
                  const SizedBox(height: 6.0),
                  const Text(
                    "Enter Your Details",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const Text('Create your profile to start your journey.'),
                  const SizedBox(
                    height: 15,
                  ),
                  Form(
                    key: _key,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _name,
                          decoration: const InputDecoration(
                            hintText: 'User Name',
                            labelText: 'User Name',
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (!value!.isValidName) {
                              return "Enter a valid Name";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        TextFormField(
                          controller: _number,
                          decoration: const InputDecoration(
                            hintText: "Number",
                            labelText: "Number",
                            prefixIcon: Icon(Icons.call),
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (value) {
                            _number = value as TextEditingController;
                          },
                          validator: (value) {
                            if (!value!.isValidPhone) {
                              return "Enter a valid Number";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        TextFormField(
                          controller: _email,
                          decoration: const InputDecoration(
                            hintText: 'Email',
                            labelText: 'Email',
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (value) {
                            _email = value as TextEditingController;
                          },
                          validator: (value) {
                            if (!value!.isValidEmail) {
                              return "Enter a valid email";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        TextFormField(
                        //  controller: _password,
                          obscureText: abc,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.fingerprint_outlined),
                            hintText: 'Password',
                            labelText: 'Password',
                            border: const OutlineInputBorder(),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {

                                });
                                abc = !abc;
                              },
                              child: Icon(abc
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                            ),
                          ),
                          validator: (value) {
                            if (!value!.isValidPassword) {
                              return "Enter a valid password";
                            } else {
                              pass = value;
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        TextFormField(
                          controller: _password,
                          obscureText: def,
                          decoration:  InputDecoration(
                            prefixIcon: Icon(Icons.fingerprint),
                            hintText: "Confirm password",
                            labelText: "Confirm password",
                            border: OutlineInputBorder(),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {

                                });
                                def=!def;
                              },
                              child: Icon(def
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                            ),
                          ),

                          validator: (value) {
                            if (value != pass) {
                              return "password does not Match";
                            }
                            return null;
                          },
                          onChanged: (value) {
                            _password = value as TextEditingController;
                          },
                        ),
                        const SizedBox(
                          height: 28.0,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(15.0), backgroundColor: Colors.black,
                                shape: const BeveledRectangleBorder()),
                            onPressed: () async{
                              log("IN method");
                             if (_key.currentState!.validate()) {
                               ragister();
                                 Navigator.push(
                                     this.context,
                                   MaterialPageRoute(builder: (context) => const login()));
                             }
                            },
                            child: const Text(
                              'Register',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Column(
                          children: [
                            const Text(
                              'OR',
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 9.0,
                            ),
                            // SizedBox(
                            //   width: double.infinity,
                            //   child: OutlinedButton.icon(
                            //     icon: const Image(
                            //       image: AssetImage(
                            //           'assets/image/icons/google.png'),
                            //       width: 25.0,
                            //     ),
                            //     onPressed: () {},
                            //     label: const Text("Sign-up with Google"),
                            //     style: ElevatedButton.styleFrom(
                            //       padding: const EdgeInsets.all(13.0),
                            //       shape: const BeveledRectangleBorder(),
                            //     ),
                            //   ),
                            // ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextButton(
                              onPressed: () { Navigator.push(
                                  this.context,
                                  MaterialPageRoute(builder: (context) => const login()));},
                              child: const Text.rich(
                                TextSpan(
                                  text: "Already Have An Account?",
                                  children: [
                                    TextSpan(
                                        text: 'Sign-Up',
                                        style: TextStyle(
                                            fontSize: 17.0,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold))
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
