import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lexilearn/src/Login_register/login.dart';
import 'package:lexilearn/src/Login_register/otp.dart';
import 'package:email_auth/email_auth.dart';

import '../home/home.dart';
import 'otp2.dart';

class forget_password_email extends StatefulWidget {
  const forget_password_email({super.key});

  @override
  State<forget_password_email> createState() => _forget_password_emailState();

}
var email="";
late Timer _timer;
bool isemail=false;

class _forget_password_emailState extends State<forget_password_email> {
  TextEditingController emailController=TextEditingController();



  // void sendOTP()async{
  //   EmailAuth emailAuth =  new EmailAuth(sessionName: "Email session");
  //   bool result = await emailAuth.sendOtp(
  //       recipientMail: emailController.value.text
  //   );
  //   if(result==true){
  //     Navigator.push(
  //         context,
  //         MaterialPageRoute(builder: (context) =>  otp2()));
  //   }
  //   else{
  //     Fluttertoast.showToast(
  //         msg: "Somting wrong ",
  //         toastLength: Toast.LENGTH_SHORT,
  //         gravity: ToastGravity.CENTER,
  //         timeInSecForIosWeb: 1,
  //         backgroundColor: Colors.red,
  //         textColor: Colors.white,
  //         fontSize: 16.0);
     //}


  final _key = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
   // final controller = Get.put(MailVeriFerification());
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(30.0),
            child: Center(
              child: Column(
                children: [
                  Image(
                    image: AssetImage("assets/image/forget_password/yellow.jpg"),
                    height: size.height * 0.7/1.95,
                  ),

                  Text(
                    "Forget Password ",
                    style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Enter your Email to Reset a Password",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  // Form(
                  //   key: _key,
                  //   child: Container(
                  //     child: Center(
                  //       child: Column(
                  //         children: [
                  //           TextFormField(
                  //             controller: emailController,
                  //             onChanged: (value){
                  //               email=value;
                  //             },
                  //             decoration: const InputDecoration(
                  //               labelText: 'E-mail',
                  //               hintText: 'E-mail',
                  //               prefixIcon: Icon(Icons.email_outlined),
                  //               border: OutlineInputBorder(),
                  //
                  //             ),
                  //               validator: (value) {
                  //                 if (!value!.isValidEmail) {
                  //                   return "Enter a valid email";
                  //                 }
                  //               }
                  //           ),

                            const SizedBox(
                              height: 30,
                            ),
                            // OtpTextField(
                            //   numberOfFields: 6,
                            //   fillColor: Colors.black.withOpacity(0.1),
                            //   filled: true,
                            //   keyboardType: TextInputType.number,
                            //   onSubmit: (valu) {
                            //     otpcode2 = valu;
                            //   },
                            // ),
                            SizedBox(
                              width: double.infinity,
                              height: 60,
                              child: ElevatedButton(
                                onPressed: () {
                                    //if (_key.currentState!.validate()) {
                                      setTimerforAutoRedirect();

                                      // controller.setTimerforAutoRedirect();
                                      // if(){}
                                      // Navigator.push(
                                      //     this.context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) => Home()));

                                      // Navigator.push(this.context,
                                      //   MaterialPageRoute(
                                      //     builder: (context) => (),),);
                                    } ,

                                child: Text(
                                  'Next',
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  shape: BeveledRectangleBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
               // ],
              ),
           // ),
        //  ),

       // ),

     // ),
    );

  }

  void setTimerforAutoRedirect() {
    //_timer = Timer.periodic(Duration(seconds: 3), (timer) {
      FirebaseAuth.instance.currentUser?.reload();
      //final user = FirebaseAuth.instance.currentUser;
      isemail = FirebaseAuth.instance.currentUser!.emailVerified;
      if (isemail) {
        // timer.cancel();
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const Home()),
        );
      }
      else{
        print("nonononnonononno");
      }

  }

}
