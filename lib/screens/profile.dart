import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Column(
        children: [
          Text("email"),
          Text("password"),
          Text("profile pic"),
        ],
      )),
    );
  }
}