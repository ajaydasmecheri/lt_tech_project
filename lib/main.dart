import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lt_technologies_project/firebase_options.dart';
import 'package:lt_technologies_project/root_setup/root.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Root());
}
