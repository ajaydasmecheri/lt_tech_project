import 'package:flutter/material.dart';
import 'package:lt_technologies_project/features/navigationbar.dart';
import 'package:lt_technologies_project/root_setup/routers.dart';
import 'package:lt_technologies_project/screens/cart.dart';
import 'package:lt_technologies_project/screens/firebaseaddcartdetails.dart';
import 'package:lt_technologies_project/screens/home.dart';
import 'package:lt_technologies_project/screens/loginpage.dart';
import 'package:lt_technologies_project/screens/profile.dart';
import 'package:lt_technologies_project/screens/registerpage.dart';





class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routers.login,
      routes: {
          
        Routers.home:(context)=>  const Home(),
        Routers.cart:(context)=>  const Cart(),
        Routers.profile:(context)=>  const Profile(),
        Routers.navigation:(context)=> const Navigationpage(),
        Routers.firecart:(context)=> const Firebaseaddcartdetails(),
        Routers.login:(context)=> const Loginpage(),
        Routers.register:(context)=> const Registerpage(),
        
       
      },
    );
  }
}