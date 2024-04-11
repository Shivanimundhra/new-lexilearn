import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:lexilearn/src/Login_register/Ragister.dart';
import 'package:lexilearn/src/Login_register/forget_Password_email.dart';
import 'package:lexilearn/src/Login_register/forget_password_phone.dart';
import 'package:lexilearn/src/Login_register/login.dart';
import 'package:lexilearn/src/Login_register/otp.dart';
import 'package:lexilearn/src/admin/adminprofile.dart';
import 'package:lexilearn/src/authentication/authentication.dart';
import 'package:lexilearn/src/authentication/signupfire.dart';
import 'package:lexilearn/src/home/home.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:lexilearn/src/home/language.dart';
import 'package:lexilearn/src/splash_screen/splash.dart';
import 'package:firebase_database/firebase_database.dart';


class admin extends StatefulWidget {
  const admin({super.key});

  @override
  State<admin> createState() => _loginState();
}

class _loginState extends State<admin> {
  //final controller = Get.put(MailVeriFerification());
  //final controller =Get.put(SignupControler());
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  String? email;
  final FirebaseAuth _auth =FirebaseAuth.instance;




  //Bool? valid;
  bool abc = true;
  //bool isEmailverified = false;
  late Timer _timer;
  final _key = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.blue[200],
        body: SingleChildScrollView(
          child: Container(
            //color: Colors.blue.shade200,
            padding: const EdgeInsets.all(30.0),
            child: Center(
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /* secetion 1*/
                  Image(
                    image: const AssetImage(
                        "assets/image/login_ragister_screen/login_ragister.png"),
                    height: size.height * 0.7 / 2.29,
                  ),
                  const Text(
                    "Welcome Back Admin,",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                  ),

                  /* secetion 1 end */

                  /* secetion 2*/
                  Form(
                    key: _key,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                              controller: _email,
                              decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.person),
                                  labelText: 'E-mail',
                                  hintText: 'E-mail',
                                  border: OutlineInputBorder()),
                              //onChanged: (value) {
                              // email = value;
                              //  },
                              validator: (value) {
                                if (!value!.isValidEmail) {
                                  return "Enter a valid email";
                                }
                              }),
                          const SizedBox(
                            height: 20.0,
                          ),
                          TextFormField(
                              controller: _password,
                              obscureText: abc,
                              decoration: InputDecoration(
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      abc = !abc;
                                    });
                                  },
                                  child: Icon(abc
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                ),
                                labelText: 'Password',
                                hintText: 'Password',
                                border: const OutlineInputBorder(),
                              ),
                              // validator: (value) {
                              //   if (!value!.isValidPassword) {
                              //     return "Enter Valid password ";
                              //   }
                              // }
                              ),
                          const SizedBox(
                            height: 50.0,
                          ),

                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () async{
                                if (_key.currentState!.validate()) {
                                await FirebaseFirestore.instance.collection("admin").doc("admin1").snapshots().forEach((element) {
                                  if(element.data()?["email"]==_email.text &&element.data()?["password"]==_password.text){
                                    Navigator.push(
                                        this.context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                            adminscreen()));
                                  }
                                });
                                }else{
                                  Fluttertoast.showToast(
                                      msg: "Wrong Details",
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.CENTER,
                                      timeInSecForIosWeb: 1,
                                      backgroundColor: Colors.red,
                                      textColor: Colors.white,
                                      fontSize: 16.0
                                  );
                                }
                                ;

                              },
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(19.0),
                                backgroundColor: Colors.black,
                                shape: const BeveledRectangleBorder(),
                                shadowColor: Colors.grey,
                              ),
                              child: const Text(
                                "LOGIN",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Column(
                            children: [
                              const SizedBox(
                                height: 10.0,
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      this.context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                          const ragister()));
                                },
                                child: const Text.rich(
                                  TextSpan(
                                    text: "Not a Admin?",
                                    style: TextStyle(fontSize: 15.0),
                                    children: [
                                      TextSpan(
                                          text: 'Sign up',
                                          style: TextStyle(
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black))
                                    ],
                                  ),
                                ),
                              ),

                            ],
                          )
                        ],
                      ),
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
