import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lexilearn/src/Login_register/login.dart';
import 'package:lexilearn/src/Login_register/otp.dart';

class forget_password_phone extends StatefulWidget {
  const forget_password_phone({super.key});

  static String verify="";

  @override
  State<forget_password_phone> createState() => forget_password_phoneState();
}

class forget_password_phoneState extends State<forget_password_phone> {
  //TextEditingController phoneController = TextEditingController();
  TextEditingController countryController = TextEditingController();

  var phone = "";

  @override
  void initState() {
    // TODO: implement initState
    countryController.text = "+91";
    super.initState();
  }

  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30.0),
            child: Center(
              child: Column(
                children: [
                  Image(
                    image:
                        AssetImage("assets/image/forget_password/yellow.jpg"),
                    height: size.height * 0.7 / 1.95,
                  ),
                  const Text(
                    "Forget Password ",
                    style:
                        TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Enter your Phone-No to Reset a Password",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  Form(
                    key: _key,
                    child: Center(
                      child: Column(
                        children: [
                          Container(
                            height: 55,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  width: 40,
                                  child: TextField(
                                    controller: countryController,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                Text(
                                  "|",
                                  style: TextStyle(
                                      fontSize: 33, color: Colors.grey),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: TextFormField(
                                    onChanged: (value) {
                                      phone = value;
                                    },
                                    keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Phone",
                                    ),
                                    validator: (value) {
                                      if (!value!.isValidPhone) {
                                        return "Number is not valid Enter a valid Number";
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // TextFormField(
                          //   controller: phoneController,
                          //   decoration: const InputDecoration(
                          //     labelText: 'Phone-No',
                          //     hintText: 'Phone-No',
                          //     prefixIcon: Icon(Icons.phone),
                          //     border: OutlineInputBorder(),
                          //   ),

                          //   keyboardType: TextInputType.phone,
                          // ),
                          const SizedBox(
                            height: 120,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 60,
                            child: ElevatedButton(
                              onPressed: () async {
                                if (_key.currentState!.validate())  {
                                  await FirebaseAuth.instance.verifyPhoneNumber(
                                    phoneNumber: countryController.text+phone,
                                    verificationCompleted:
                                        (PhoneAuthCredential credential) {},
                                    verificationFailed:
                                        (FirebaseAuthException e) {},
                                    codeSent: (String verificationId,
                                        int? resendToken) {
                                      forget_password_phone.verify=verificationId;
                                    // Navigator.pushNamed(context, "otp");
                                      Navigator.push(
                                          this.context,
                                          MaterialPageRoute(builder: (context) => otp()));
                                    },
                                    codeAutoRetrievalTimeout:
                                        (String verificationId) {},
                                  );
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: const BeveledRectangleBorder(),
                              ),
                              child: const Text(
                                'Next',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white),
                              ),
                            ),
                          ),
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
