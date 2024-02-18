import 'package:eatrispedal/widgets/appBar.dart';
import 'package:eatrispedal/widgets/buttomNav.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {

  const Cart({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: const CustomAppBar(),
           body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('1 item in cart', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                  
                  
                ],
              ),
            ),
           ),
           bottomNavigationBar: const BottomNavigator(),
       );
  }
}