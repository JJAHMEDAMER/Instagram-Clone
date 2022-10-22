import 'dart:typed_data';
import 'package:flutter/material.dart';

// Provided by the Firebase_auth dependency
import 'package:firebase_auth/firebase_auth.dart';

// Firebase firestore dependency
import 'package:cloud_firestore/cloud_firestore.dart';

class Auth {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _Firestore = FirebaseFirestore.instance;

// Sign Up
  Future<String> signUp({
    required String email,
    required String password,
    required String username,
    //required Uint8List image,
    String? firstName,
    String? lastName,
  }) async {
    firstName ??= username;
    lastName ??= email;
    var response = "";

    try {
      if (email.isNotEmpty || password.isNotEmpty || username.isNotEmpty) {
        // Register User
        UserCredential userCredential =
            await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );

        // add User data to firebase
        await _Firestore.collection('users').doc(userCredential.user!.uid).set(
          {
            'uid': userCredential.user!.uid,
            'username': username,
            'password': password,
            'email': email,
            'firstName': firstName,
            'lastName': lastName,
            'followers': [],
            'following': [],
          },
        );
        response = 'success';
      }
    } catch (err) {
      response = err.toString();
    }
    return response;
  }
}
