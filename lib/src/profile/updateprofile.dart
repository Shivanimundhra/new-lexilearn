import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class updateprofile extends StatefulWidget {
  // final String username;
  // final String Email;
  // final String number;
  updateprofile({super.key});

  @override
  State<updateprofile> createState() => _updateprofileState();
}

class _updateprofileState extends State<updateprofile> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _usernameController = TextEditingController();

  TextEditingController _emailController = TextEditingController();

  late TextEditingController _numberController = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Initialize controllers with current user data
    User? user = FirebaseAuth.instance.currentUser;
    _usernameController = TextEditingController(text: user?.displayName);
    _emailController = TextEditingController(text: user?.email);
    _numberController = TextEditingController(text: user?.phoneNumber); // You can set number if you have stored it previously
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _numberController.dispose();
    super.dispose();
  }

  void _updateUserProfile() async {
    if (_formKey.currentState!.validate()) {
      User? user = FirebaseAuth.instance.currentUser;
      try {
        await user?.updateDisplayName(_usernameController.text);
        await user?.updateEmail(_emailController.text);
        await FirebaseFirestore.instance
            .collection('users')
            .doc(user?.uid)
            .update({
          'number': _numberController.text,
          'username':_usernameController.text,
          'email':_emailController.text

        });

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Profile updated successfully')),
        );
      } catch (error) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to update profile: $error')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Profile'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(labelText: 'Username'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your username';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _numberController,
                decoration: InputDecoration(labelText: 'Number'),
                validator: (value) {
                  // You can add validation for number if required
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _updateUserProfile,
                child: Text('Update'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
