import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../home/home.dart';
import 'forget_password_phone.dart';

class otp extends StatelessWidget {
  otp({super.key});

  final FirebaseAuth auth = FirebaseAuth.instance;
  var otpcode1 = "";
  var ccc=0;

  @override
  Widget build(BuildContext context) {
    //TextEditingController otpController=TextEditingController();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Column(
              children: [
                Image(
                  image:
                      const AssetImage('assets/image/forget_password/blue.jpg'),
                  height: size.height * 0.3,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  "Verification",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const Text("Enter Valid OTP "),
                const SizedBox(
                  height: 30.0,
                ),
                OtpTextField(
                  numberOfFields: 6,
                  fillColor: Colors.black.withOpacity(0.1),
                  filled: true,
                  keyboardType: TextInputType.number,
                  onSubmit: (valu) {
                    otpcode1 = valu;
                  },
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const SizedBox(
                  height: 150.0,
                ),
                SizedBox(
                  height: 60.0,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () async {
                      try {
                        PhoneAuthCredential credential =
                            PhoneAuthProvider.credential(
                                verificationId: forget_password_phone.verify,
                                smsCode: otpcode1);
                        // Sign the user in (or link) with the credential
                        await auth.signInWithCredential(credential);
                        ccc=1;
                      } catch (e) {
                        print("Wrong OTP");
                        Fluttertoast.showToast(
                            msg: "Invalid Otp Tray Agian ",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0);
                        ccc=0;
                      }
                      if(ccc==1){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Home()));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        shape: const BeveledRectangleBorder(),
                        backgroundColor: Colors.black),
                    child: const Text(
                      'Verified',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
