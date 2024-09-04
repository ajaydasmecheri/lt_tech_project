import 'package:flutter/material.dart';
import 'package:lt_technologies_project/screens/cart.dart';
import 'package:lt_technologies_project/screens/home.dart';
import 'package:lt_technologies_project/screens/profile.dart';



class Navigationpage extends StatefulWidget {
  const Navigationpage({super.key});

  @override
  State<Navigationpage> createState() => _NavigationpageState();
}

class _NavigationpageState extends State<Navigationpage> {
  int currentIndex1 = 0;

final  List _pages = [

   const Home(),
    const Cart(),
    const Profile()



  
    ];

  @override
  Widget build(BuildContext context) {
    void onItemTapped(int index) {
      setState(() {
        currentIndex1 = index;
      });
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("TL TECHNOLOGIES SHOPPING APP", style: TextStyle(color:Colors.white ),),
      ),
      body: Center(
        child: _pages.elementAt(currentIndex1),
      ),
  
      bottomNavigationBar: BottomNavigationBar(
        
        items: const [
        BottomNavigationBarItem(
          label: "home",
           icon: Icon(Icons.home,color: Colors.black),
           backgroundColor: Colors.red
           ),


        
        BottomNavigationBarItem(label: "cart",  icon: Icon(Icons.shopping_cart, color: Colors.black),backgroundColor: Colors.purple ),
        BottomNavigationBarItem(label: "profile", icon: Icon(Icons.person,color: Colors.black),backgroundColor: Colors.blue),
      ], currentIndex: currentIndex1, onTap: onItemTapped),
    );
  }
}
