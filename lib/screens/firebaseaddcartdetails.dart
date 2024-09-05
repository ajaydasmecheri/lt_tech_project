// ignore_for_file: use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Firebaseaddcartdetails extends StatefulWidget {
  const Firebaseaddcartdetails({super.key});

  @override
  State<Firebaseaddcartdetails> createState() => _FirebaseaddcartdetailsState();
}

class _FirebaseaddcartdetailsState extends State<Firebaseaddcartdetails> {
  
  TextEditingController enterqty=TextEditingController();
  @override
  Widget build(BuildContext context) {

    final productargs = ModalRoute.of(context)!.settings.arguments as Map?;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          TextFormField(
            controller: enterqty,
            decoration: const InputDecoration(border: OutlineInputBorder(), hintText: "enter qty"),
          ),
          ElevatedButton(onPressed: () async{


                  await FirebaseFirestore.instance.collection("cart").add({
                    "productname":productargs?["productname"],
                    "productprice":productargs?["productprice"],
                    "productimage":productargs?["productimage"],
                    "qty":enterqty.text.trim()
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Item successfully ordered'),
                        duration: Duration(seconds: 2),
                        
                      ),
                      
                    );
                    Navigator.pop(
                      context,
                    );

                  




            
          }, child: const Text("add to cart"))
        ],),
      ),
    );
  }
}