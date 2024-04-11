//
//
// import 'dart:async';
//
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:get/get.dart';
// import 'package:lexilearn/src/home/home.dart';
//
// import '../authentication/authentication.dart';
//
//
// class MailVeriFerification extends GetxController{
//
//   late Timer _time;
//
//   @override
//   void onInit() {
//     super.onInit();
//     sendVerificationEmail();
//     setTimerforAutoRedirect();
//   }
//
//   void sendVerificationEmail()async{
//
//     try{await AuthMethods().sendEmailVerification();}
//     catch(e){Fluttertoast.showToast(
//         msg: "Somthing wrong in emailverification ",
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.CENTER,
//         timeInSecForIosWeb: 1,
//         backgroundColor: Colors.red,
//         textColor: Colors.white,
//         fontSize: 16.0);}
//
//
//   }
//
//   void setTimerforAutoRedirect(){
//         _time= Timer.periodic(Duration(seconds: 3), (timer) {
//           FirebaseAuth .instance.currentUser?.reload();
//           final user=FirebaseAuth.instance.currentUser;
//           if(user!.emailVerified){
//             timer.cancel();
//           }
//         });
//   }
//
//   void manulCheckEmailVerification(){
//
//   }
// }