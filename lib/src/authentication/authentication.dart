import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:lexilearn/src/Login_register/Ragister.dart';
import 'package:lexilearn/src/Login_register/login.dart';

// import 'package:lexilearn/src/Login_register/welcome.dart';
// import 'package:lexilearn/src/authentication/exception.dart';
// import 'package:lexilearn/src/home/home.dart';
//
// class Authentication extends GetxController {
//   static Authentication get instance => Get.find();
//
//   //variabale
//   final _auth = FirebaseAuth.instance;
//   late final Rx<User?> firebaseUser;
//
//   @override
//   void onReady() {
//     firebaseUser = Rx<User?>(_auth.currentUser);
//     firebaseUser.bindStream(_auth.userChanges());
//     ever(firebaseUser, _setInitialScreen);
//   }
//
//   _setInitialScreen(User? user) {
//     User == null ? Get.offAll(() => welcome()) : Get.offAll(() => const Home());
//   }
//
//   Future<void> createUserWithEmailandPassword(
//       String email, String password) async {
//     try {
//       await _auth.createUserWithEmailAndPassword(
//           email: email, password: password);
//       firebaseUser.value != null
//           ? Get.offAll(() => const Home())
//           : Get.to(() => welcome());
//     } on FirebaseAuthException catch (e) {
//       final ex = SignUpWithEmailAndPasswordFailuer.code(e.code);
//       print('Firebase auth Exception - ${ex.message}');
//       throw ex;
//     } catch (_) {
//       const ex = SignUpWithEmailAndPasswordFailuer();
//       print('Exception -${ex.message}');
//     }
//   }
//
//   Future<void> loginWithEmailandPassword(String email, String Password) async {
//     try {
//       await _auth.signInWithEmailAndPassword(email: email, password: Password);
//     } on FirebaseAuthException catch (e) {
//     } catch (_) {}
//   }
//
//   Future<void> logout() async => await _auth.signOut();
// }
final TextEditingController emailcontoler = TextEditingController();
final TextEditingController usercontroler = TextEditingController();
class AuthMethods {
  late Timer _timer;

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // sign-up user
  signUpUser({
    required String email,
    required String username,
    required String password,
    required String number,
  }) async {
    String res = "Somting Wrong";
    try {
      // ragister user
      UserCredential cred = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      print("id is${cred.user!.uid}");

      // add user to database
      await _firestore.collection('users').doc(cred.user!.uid).set({
        "uid": cred.user!.uid,
        "username": username,
        "email": email,
        "password": password,
        "number": number,
      });
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  //login outh
  Future<String> loginuser({
    required String email,
    required String password,
  }) async {
    String res = "some error";
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        res = "success";
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  // Future<void>sendEmailVerification()async{
  // try
  // {await _auth.currentUser?.sendEmailVerification();}
  // catch (e){
  //   Fluttertoast.showToast(
  //       msg: "Somthing wrong in emailverification ",
  //       toastLength: Toast.LENGTH_SHORT,
  //       gravity: ToastGravity.CENTER,
  //       timeInSecForIosWeb: 1,
  //       backgroundColor: Colors.red,
  //       textColor: Colors.white,
  //       fontSize: 16.0);
  // }
  // }

  // Future<void> showuserdilog(BuildContext context, String name) {
  //   return showDialog(
  //       context: context,
  //       builder: (context) {
  //         return AlertDialog(
  //           title: Text("update Username"),
  //           content: SingleChildScrollView(
  //             child: Column(
  //               children: [
  //                 TextFormField(
  //                 controller: emailcontoler,
  //                 decoration: const InputDecoration(
  //                     prefixIcon: Icon(Icons.person),
  //                     labelText: 'E-mail',
  //                     hintText: 'E-mail',
  //                     border: OutlineInputBorder()),
  //                 //onChanged: (value) {
  //                 // email = value;
  //                 //  },
  //                 validator: (value) {
  //                   if (!value!.isValidEmail) {
  //                     return "Enter a valid email";
  //                   }
  //
  //                 }),
  //
  //
  //
  //
  //
  //                 )
  //               ],
  //             ),
  //           ),
  //           actions: [
  //            TextButton(onPressed: () {
  //            Navigator.pop(context);},
  //               child: Text("close")),
  //            TextButton(onPressed: () {
  //             Navigator.pop(context);},
  //                child: Text("OK"))],
  //         );
  //       }
  //       );
  // }
}
