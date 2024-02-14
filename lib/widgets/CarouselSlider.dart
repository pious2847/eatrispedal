import 'package:eatrispedal/widgets/foodCards.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          // Add other widgets here if needed

          CarouselSlider(
            options: CarouselOptions(
              height: 165.0, // Adjust height as needed
              aspectRatio: 16 / 9, // Adjust aspect ratio as needed
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
            items: [
              CarouselFoodCard(
                image: 'assets/images/pizza.png',
                title: 'Pepperoni Pizza',
                price: 'Ghc 200.00',
              ),
              CarouselFoodCard(
                image: 'assets/images/tacos.png',
                title: 'Tacos',
                price: 'Ghc 170.00',
              ),
              CarouselFoodCard(
                image: 'assets/images/sandwich.png',
                title: 'Sandwich',
                price: 'Ghc 130.00',
              ),
              CarouselFoodCard(
                image: 'assets/images/hamburger.png',
                title: 'Hamburger',
                price: 'Ghc 150.00',
              ),
              // Add more FoodCard items here
            ].map((item) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    child: item,
                  );
                },
              );
            }).toList(),
          ),

          // Add other widgets here if needed
        ],
    );
  }
}

