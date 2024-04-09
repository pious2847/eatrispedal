import 'package:eatrispedal/theme/colors.dart';
import 'package:eatrispedal/widgets/appBar.dart';
import 'package:eatrispedal/widgets/buttomNav.dart';
import 'package:eatrispedal/widgets/foodCards.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '6 item in cart',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              CartFoodCard(
                image: 'assets/images/all.png',
                title: 'Beaf Plate',
                price: '120.00',
              ),
              SizedBox(
                height: 10,
              ),
              CartFoodCard(
                image: 'assets/images/hamburger.png',
                title: 'Hamburger',
                price: '180.00',
              ),
              SizedBox(
                height: 10,
              ),
              CartFoodCard(
                image: 'assets/images/pizza.png',
                title: 'Peperoni Pizza',
                price: '250.00',
              ),
              SizedBox(
                height: 10,
              ),
              CartFoodCard(
                image: 'assets/images/sandwich.png',
                title: 'Sandwich',
                price: '150.00',
              ),
              SizedBox(
                height: 10,
              ),
              CartFoodCard(
                image: 'assets/images/tacos.png',
                title: 'Tacos',
                price: '100.00',
              ),
              SizedBox(
                height: 10,
              ),
              CartFoodCard(
                image: 'assets/images/tacos.png',
                title: 'Tacos',
                price: '100.00',
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                '  Order instructions',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: secondarybgcolor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      filled: false,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ' Total ',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Ghc 870.00 ',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: primtextcolor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                              width: MediaQuery.of(context).size.width *
                                  0.8, // Set the width of the container

                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          primcolor),
                                  elevation: MaterialStateProperty.all(5)
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Cart(),
                                    ),
                                  );
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.paypal_rounded,
                                        color: papaypalicon),
                                    SizedBox(
                                        width:
                                            5), // Add some space between the icon and text
                                    Text('Checkout',
                                        style: TextStyle(
                                            color: secondarytextcolor)),
                                  ],
                                ),
                              ),
                            ),
                          
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigator(),
    );
  }
}
