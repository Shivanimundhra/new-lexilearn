import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:lexilearn/src/Login_register/Ragister.dart';
import 'package:lexilearn/src/Login_register/forget_Password_email.dart';
import 'package:lexilearn/src/Login_register/forget_password_phone.dart';
import 'package:lexilearn/src/Login_register/otp.dart';
import 'package:lexilearn/src/authentication/authentication.dart';
import 'package:lexilearn/src/authentication/signupfire.dart';
import 'package:lexilearn/src/home/home.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:lexilearn/src/home/language.dart';
import 'package:lexilearn/src/splash_screen/splash.dart';
import 'package:firebase_database/firebase_database.dart';

import '../admin/admin.dart';
import 'otp2.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
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

  // @override
  // void initState() {
  //   super.initState();
  //
  //   _timer = Timer.periodic(const Duration(seconds: 5), (timer) async {
  //     await FirebaseAuth.instance.currentUser?.reload();
  //     final user = FirebaseAuth.instance.currentUser;
  //     if (user?.emailVerified ?? false) {
  //       timer.cancel();
  //       Navigator.pop(context, language());
  //     }
  //   });
  // }
  // @override
  // void dispose() {
  //   super.dispose();
  //   _timer.cancel();
  // }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   isEmailverified = FirebaseAuth.instance.currentUser!.emailVerified;
  //   if (!isEmailverified) {
  //     sendverificationemail();
  //   }
  // }
  //
  // Future<void> sendverificationemail() async {
  //   try {
  //     await _auth.currentUser?.sendEmailVerification();
  //   } catch (e) {
  //     Fluttertoast.showToast(
  //         msg: "Somthing wrong in emailverification ",
  //         toastLength: Toast.LENGTH_SHORT,
  //         gravity: ToastGravity.CENTER,
  //         timeInSecForIosWeb: 1,
  //         backgroundColor: Colors.red,
  //         textColor: Colors.white,
  //         fontSize: 16.0);
  //   }
  // }
  //
  // void setTimerforAutoRedirect() {
  //   _timer = Timer.periodic(Duration(seconds: 3), (timer) {
  //     FirebaseAuth.instance.currentUser?.reload();
  //     final user = FirebaseAuth.instance.currentUser;
  //     if (user!.emailVerified) {
  //       timer.cancel();
  //       Navigator.of(context).pushReplacement(
  //         MaterialPageRoute(builder: (context) => const Home()),
  //       );
  //     }
  //   });
  // }

  void signin() async {

    String res = await AuthMethods()
        .loginuser(email: _email.text, password: _password.text);
    if (res == "success") {


      // _timer = Timer.periodic(const Duration(seconds: 5), (timer) async {
      //   await FirebaseAuth.instance.currentUser?.reload();
      //   final user = FirebaseAuth.instance.currentUser;
      //   if (user?.emailVerified ?? false) {
      //     timer.cancel();
      //     Navigator.pop(context, language());
      //   }
      // });
      //
      // _timer.cancel();
      //sendverificationemail();
      //controller.sendVerificationEmail();

      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const language(),
        ),
      );
    }
  }

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
                    "Welcome Back,",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                  ),
                  const Text(
                    "Make it Work , Make it Right ,Make it Fast.",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
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
                              validator: (value) {
                                if (!value!.isValidPassword) {
                                  return "Enter Valid password ";
                                }
                              }),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {
                                showModalBottomSheet(
                                  context: context,
                                  builder: (context) => Container(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Make Selection!",
                                          style: TextStyle(
                                              fontSize: 30.0,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        const Text(
                                          "Select one of the Options given below to Reset your password.",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600),
                                        ),
                                        const SizedBox(
                                          height: 30.0,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              this.context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const forget_password_email(),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.all(20.0),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                color: Colors.grey.shade300),
                                            child: const Row(
                                              children: [
                                                Icon(
                                                  Icons.email_outlined,
                                                  size: 60.0,
                                                ),
                                                SizedBox(
                                                  width: 10.0,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "E-Mail",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 16.0),
                                                    ),
                                                    Text(
                                                        "Reset via E-mail Verification.")
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 30.0,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              this.context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const forget_password_phone(),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.all(20.0),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                color: Colors.grey.shade300),
                                            child: const Row(
                                              children: [
                                                Icon(
                                                  Icons.phone_android_rounded,
                                                  size: 60.0,
                                                ),
                                                SizedBox(
                                                  width: 10.0,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Phone No",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 16.0),
                                                    ),
                                                    Text(
                                                        "Reset via Phone Verification.")
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              child: const Text("Forget Password?"),
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                if (_key.currentState!.validate()) {
                                  //  SignupControler.instance.registerUser(controller.email.text.trim(),controller.email.text.trim() );
                                  //createUserWithIdAndPass(email,pass);
                                  signin();
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
                              const Text(
                                "OR",
                                style: TextStyle(fontSize: 15.0),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: OutlinedButton.icon(
                                  onPressed: () async{

                                    final GoogleSignIn _googleSignIn = GoogleSignIn();

                                    try {

                                      final GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();

                                      if(googleSignInAccount != null ){
                                        final GoogleSignInAuthentication googleSignInAuthentication = await
                                        googleSignInAccount.authentication;

                                        final AuthCredential credential = GoogleAuthProvider.credential(
                                          idToken: googleSignInAuthentication.idToken,
                                          accessToken: googleSignInAuthentication.accessToken,
                                        );

                                        await _auth.signInWithCredential(credential);
                                        Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(builder: (context) => const Home()),
                                        );
                                      }

                                    }catch(e) {
                                      Fluttertoast.showToast(
                                                  msg: "Somthing wrong in emailverification ",
                                                   toastLength: Toast.LENGTH_SHORT,
                                                  gravity: ToastGravity.CENTER,
                                                  timeInSecForIosWeb: 1,
                                                   backgroundColor: Colors.red,
                                                  textColor: Colors.white,
                                                   fontSize: 16.0);
                                    }


                                  },
                                  label: const Text("Sign-in with Google"),
                                  icon: const Image(
                                      image: AssetImage(
                                          "assets/image/icons/google.png"),
                                      width: 20.0),
                                  style: ElevatedButton.styleFrom(
                                    shape: const ContinuousRectangleBorder(),
                                  ),
                                ),
                              ),
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
                                    text: "Don't have Account?",
                                    style: TextStyle(fontSize: 15.0),
                                    children: [
                                      TextSpan(
                                          text: ' Sign up',
                                          style: TextStyle(
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black))
                                    ],
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      this.context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                          const admin()));
                                },
                                child: const Text.rich(
                                  TextSpan(
                                    text: "Admin of the app ?",
                                    style: TextStyle(fontSize: 15.0),
                                    children: [
                                      TextSpan(
                                          text: 'ADMIN',
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

extension extString on String {
  bool get isValidEmail {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(this);
  }

  bool get isValidName {
    final nameRegExp =
        RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");
    return nameRegExp.hasMatch(this);
  }

  bool get isValidPassword {
    final passwordRegExp =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    return passwordRegExp.hasMatch(this);
  }

  bool get isNotNull {
    return this != null;
  }

  bool get isValidPhone {
    final phoneRegExp = RegExp(r"^((\\+91-?)|0)?[0-9]{10}$");
    return phoneRegExp.hasMatch(this);
  }
}
//
// _signInWithGoogle()async{
//
//   final GoogleSignIn _googleSignIn = GoogleSignIn();
//
//   try {
//
//     final GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
//
//     if(googleSignInAccount != null ){
//       final GoogleSignInAuthentication googleSignInAuthentication = await
//       googleSignInAccount.authentication;
//
//       final AuthCredential credential = GoogleAuthProvider.credential(
//         idToken: googleSignInAuthentication.idToken,
//         accessToken: googleSignInAuthentication.accessToken,
//       );
//
//       await _auth.signInWithCredential(credential);
//       Navigator.of(context).pushReplacement(
//                  MaterialPageRoute(builder: (context) => const Home()),
//                );
//     }
//
//   }catch(e) {
//     showToast(message: "some error occured $e");
//   }
//
//
// }
