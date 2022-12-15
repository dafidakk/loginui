import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: signUserOut,
              icon: Icon(Icons.logout),
            ),
          ],
        ),
        body: Center(
          child: Text(
            "LOGGED IN as: " + user.email!,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
