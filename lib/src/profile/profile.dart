import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:lexilearn/src/Login_register/forget_Password_email.dart';
import 'package:lexilearn/src/Login_register/login.dart';
import 'package:lexilearn/src/profile/updateprofile.dart';

import '../authentication/authentication.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
String? uid;
String? eamil;
String? username;
String? number;






void getData() async{
  User? user = _auth.currentUser;

  if (user != null) {
    uid = user.uid;
    final DocumentSnapshot userdoc= await FirebaseFirestore.instance.collection("users").doc(uid).get();
    email= userdoc.get('email');
    username=userdoc.get('username');
    number=userdoc.get('number');
    print(number);
  } else {
    print('User is not logged in.');
  }
}

class profile extends StatefulWidget {

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
 void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    Color accentColor = Colors.green.shade50;
   // CollectionReference users = FirebaseFirestore.instance.collection('users');
    //String? userId = FirebaseAuth.instance.currentUser?.uid;


    //String? uid = FirebaseAuth.instance.currentUser?.uid;
    final auth = FirebaseAuth.instance;

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.green.shade300, // Using primary color for app bar
      ),
      body: SingleChildScrollView(
        child: Card(
          elevation: 4,
          margin: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/image/onbord_screens/blue.png',
                width: double.infinity,
                fit: BoxFit.cover,
                height: 200, // Set the desired height for the image
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                  row(tital: 'User name ', value: username ?? "Not logged in", icon: Icons.person,),

                // Text(
                // 'User Name:-> \n${username ?? "Not logged in"}',
                //   style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                   // SizedBox(height: 10),
                    // Text(
                    //   'Kirti Soni',
                    //   style: TextStyle(fontSize: 20),
                    // ),
                    row(tital: 'Email ', value: email ?? "Not logged in", icon: Icons.email,),
                    //SizedBox(height: 10),
                    // Text(
                    //   'Email:-> ${email ?? "Not logged in"}',
                    //   style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    row(tital: 'Nummber ', value: number ?? "Not logged in", icon: Icons.phone,),
                    SizedBox(height: 20),
                    // Text(
                    //   'Number:->\n${number ?? "Not logged in"}',
                    //   style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => updateprofile(),
                              ),
                            );
                            // Implement edit functionality
                          },
                          child: Text('Edit',style: TextStyle(color: Colors.black),),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green.shade300  , // Using accent color for the button
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            auth.signOut().then((value) {
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => login()));
                            });

                          },
                          child: Text('Logout',style: TextStyle(color: Colors.black),),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green.shade300, // Using accent color for the button
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    _buildProgressIndicator(title: 'Profile Completeness', value: 0.7, accentColor: Colors.green.shade700,),
                    SizedBox(height: 20),
                    _buildProgressIndicator(title: 'Task Completion', value: 0.5, accentColor: Colors.green.shade700,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProgressIndicator({required String title, required double value, required Color accentColor}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        LinearProgressIndicator(
          value: value,
          minHeight: 20,
          backgroundColor: Colors.grey[300]!,
          valueColor: AlwaysStoppedAnimation<Color>(accentColor), // Using accent color for the progress bar
        ),
        SizedBox(height: 10),
        Text(
          '${(value * 100).toInt()}%',
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}
class row extends StatelessWidget {
  final String tital,value;
  final IconData icon;
  const row({super.key, required this.tital, required this.value, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(tital ,),
          trailing: Text(value,),
          leading: Icon(icon),

        ),
        const Divider(color: Colors.black,)
      ],
    );
  }

}

