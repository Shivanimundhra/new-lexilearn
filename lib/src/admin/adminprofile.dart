import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lexilearn/src/Login_register/login.dart';

class adminscreen extends StatefulWidget {
  adminscreen({super.key});

  @override
  State<adminscreen> createState() => _adminscreenState();
}

class _adminscreenState extends State<adminscreen> {
  final auth = FirebaseAuth.instance;
  final firestor = FirebaseFirestore.instance.collection('users').snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
        AppBar(
          backgroundColor: Colors.blueAccent,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text("Users details"),
          actions: [
            IconButton(onPressed: () {
              auth.signOut().then((value) {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => login()));
              }).onError((error, stackTrace) {
                Fluttertoast.showToast(
                    msg: "Somthing wrong",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0
                );
              });
            }, icon: Icon(Icons.login_outlined),),
          ],
        ),
        body: Column(
          children: [
            StreamBuilder<QuerySnapshot>(stream: firestor,
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting)
                    return CircularProgressIndicator();

                  if (snapshot.hasError)
                    return Text("snapshot have error");

                  return
                    Expanded(
                      child: ListView.builder(
                        itemCount: snapshot.data.docs.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              ListTile(
                                title: Text(
                                  'Username: ${snapshot.data.docs[index]['username'].toString()}',
                                  style: TextStyle(fontSize: 20.0),
                                ),
                              ),
                              if (index != snapshot.data.docs.length - 1) Divider(), // Add a Divider if it's not the last item
                            ],
                          );
                        },
                      ),
                    );




                }),


          ],
        ));
  }
}
