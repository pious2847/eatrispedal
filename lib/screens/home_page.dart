import 'package:eatrispedal/theme/colors.dart';
import 'package:eatrispedal/widgets/CarouselSlider.dart';
import 'package:eatrispedal/widgets/appBar.dart';
import 'package:eatrispedal/widgets/buttomNav.dart';
import 'package:eatrispedal/widgets/foodCards.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: secondarybgcolorgrey,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: const Row(
                children: [
                  Icon(Icons.search, size: 15.0),
                  SizedBox(width: 10), // Add space between icon and text field
                  Expanded(
                    child: TextField(
                      autocorrect: true,
                      decoration: InputDecoration(
                        hintText: 'Search',
                        border: InputBorder.none, // Remove default border
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _AddCard(
                  image: 'assets/images/all.png',
                  lable: 'All',
                  isActive: true,
                ),
                _AddCard(
                  image: 'assets/images/hamburger.png',
                  lable: 'Hambuger',
                ),
                _AddCard(
                  image: 'assets/images/pizza.png',
                  lable: 'Pizza',
                ),
                _AddCard(
                  image: 'assets/images/tacos.png',
                  lable: 'Tacos',
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Promotion',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: primcolor),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width*0.5,
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Enjoy Daily Offer',
                                style: TextStyle(
                                  color: secondarytextcolor,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Delight in our latest food promo! Savor a variety of flavors and satisfy your cravings. Limited-time offer—don't miss out!",
                                style: TextStyle(
                                    color: secondarytextcolor, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Image(
                        image: AssetImage('assets/images/tacos.png'),
                        height: 120,
                        width: 120,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Text(
                  'Featured 🔥',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
            SizedBox(height: 15,),
          
             MyCarousel(),
            const SizedBox(height: 20,),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                  'Popular 🔥',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
            SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FoodCard(
                      image: 'assets/images/pizza.png',
                      title: 'Pepperoni Pizza',
                      price: 'Ghc 200.00',
                    ),
                     FoodCard(
                      image: 'assets/images/tacos.png',
                      title: 'Tacos',
                      price: 'Ghc 170.00',
                    ),
                  ],
                ),
            SizedBox(height: 15,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FoodCard(
                      image: 'assets/images/sandwich.png',
                      title: 'Sandwich',
                      price: 'Ghc 130.00',
                    ),
                     FoodCard(
                      image: 'assets/images/hamburger.png',
                      title: 'Hamburger',
                      price: 'Ghc 150.00',
                    ),
                  ],
                ),
              

              ],
            ),
            
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigator(),
    );
  }
}

class _AddCard extends StatelessWidget {
  final String image;
  final String lable;
  final bool isActive;

  const _AddCard(
      {Key? key, this.image = '', this.lable = '', this.isActive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (isActive == true) ...[
          Container(
            height: 60,
            width: 60,
            decoration: const BoxDecoration(
                color: primcolor,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                )),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image(
                image: AssetImage(image),
                height: 60,
                width: 40,
              ),
            ),
          ),
        ] else ...[
          Container(
            decoration: const BoxDecoration(
                color: secondarybgcolor,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                )),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image(
                image: AssetImage(
                  image,
                ),
                height: 40,
                width: 40,
              ),
            ),
          ),
        ],
        Text(
          lable,
          style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 12.0),
        )
      ],
    );
  }
}

